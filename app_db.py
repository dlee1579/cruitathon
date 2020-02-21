from flask import Flask, render_template, request
from sqlalchemy import Column, Integer, String
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.pool import NullPool
from sqlalchemy.orm import sessionmaker
from sqlalchemy import func
import logging
import pandas as pd
import plotly
import plotly.graph_objs as go
import numpy as np
import json
import sys

logging.basicConfig(level=logging.DEBUG)

Base = declarative_base()

class Recruits(Base):
    __tablename__ = "Recruits"
    id = Column(Integer, primary_key =  True)
    name = Column(String)
    team = Column(String)
    position = Column(String)

class Teams(Base):
    __tablename__ = "Teams"
    team_name = Column(String, primary_key=True)
    conference = Column(String)
    mascot = Column(String)
    city = Column(String)
    state = Column(String)

class Offers(Base):
    __tablename__ = "Offers"
    column_not_exist_in_db = Column(Integer, primary_key=True) # just add for sake of this error, dont add in db
    player_id = Column(Integer)
    team_offered = Column(String)

def pos_dist_plot(pos_dist):
    data = [
        go.Pie(
            labels=pos_dist["position"],
            values=pos_dist["id"]
        )
    ]
    graphJSON = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)
    return graphJSON

def competition_plot(competitors, count_comp):
    df = pd.DataFrame({'x': competitors, 'y': count_comp}) # creating a sample dataframe

    data = [
        go.Bar(
            x=df['x'], # assign x as the dataframe column 'x'
            y=df['y']
        )
    ]
    graphJSON = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)
    return graphJSON

# db = create_engine("postgresql+psycopg2://postgres:Dl1579icn33@localhost:5432/cruitathon")
db = create_engine('mysql+pymysql://f3hlBYQiVA:a74UGArRfC@remotemysql.com/f3hlBYQiVA', echo=True, poolclass=NullPool)

Session = sessionmaker(bind = db)
session = Session()
# recruits = session.query(Recruits)
teams = session.query(Teams.team_name, Teams.conference).all()
# competition = session.query(Recruits.team, Offers.team_offered, func.count(Offers.team_offered))\
#     .join(Recruits, Offers.player_id==Recruits.id)\
#     .group_by(Recruits.team, Offers.team_offered)\
#     .having(Recruits.team!=Offers.team_offered)\
#     .having(func.count(Offers.team_offered)>7)

session.close()

teamlist = []
teams_df =  pd.read_sql_table("Teams",db)
# print(teams_df)
for row in teams:
    teamlist.append(row.team_name)
    # print(row)
# print("Team List below:")
# print(teamlist)

team_data = pd.DataFrame(columns=["name", "position"])

app = Flask(__name__, template_folder="templates")

@app.route("/")
def index():
    return render_template("/home.html", teams=teamlist, team_data=team_data, teams_df = teams_df)

@app.route("/team_view/<team_selected>", methods=["GET"])
def team_view(team_selected):
    session = Session()
    recruits = session.query(Recruits).filter(Recruits.team==team_selected)
    # print(recruits)
    # for r in recruits:
    #     print(r.__dict__)
    recruits_df = pd.read_sql(recruits.statement, session.bind)
    print(recruits_df)

    pos_dist = recruits_df.groupby(by="position").count().reset_index().sort_values("id")[["position", "id"]]
    print(pos_dist)
    pie = pos_dist_plot(pos_dist)
    return render_template("./team_view.html", team_selected=team_selected, plot=pie)

@app.route("/submit", methods=['POST'])
def submit():
    # db = create_engine('mysql+mysqldb://f3hlBYQiVA:a74UGArRfC@remotemysql.com/f3hlBYQiVA', echo=True, poolclass=NullPool)
    # Session = sessionmaker(bind = db)
    session = Session()
    competition = session.query(Recruits.team, Offers.team_offered, func.count(Offers.team_offered))\
        .join(Recruits, Offers.player_id==Recruits.id)\
        .group_by(Recruits.team, Offers.team_offered)\
        .having(Recruits.team!=Offers.team_offered)\
        # .limit(8)
        # .having(func.count(Offers.team_offered)>7)\
        # .limit(8)
    team_selected = request.form["team_selected"]
    competition_results = competition.having(Recruits.team==team_selected).order_by(func.count(Offers.team_offered).desc()).limit(8)
    session.close()
    # db.dispose()
    # print(competition_results)
    competitors = [x[1] for x in competition_results]
    count_comp = [x[2] for x in competition_results]
    
    result = recruits.filter(Recruits.team==team_selected)
    commit_list = []
    position_list = []
    team_data = pd.DataFrame(columns=["name", "position"])
    for r in result:
        commit_list.append(r.name)
        position_list.append(r.position)
        # team_data.append([r.name, r.position])
        # print(r.name, r.position)
    team_data["name"]=commit_list
    team_data["position"]=position_list
    bar = competition_plot(competitors=competitors, count_comp=count_comp)

    return render_template("/index.html", teams=teamlist, team_selected=team_selected, team_data=team_data, competition_results=competition_results, plot=bar)


if __name__ == "__main__":
    app.debug = True
    app.run()

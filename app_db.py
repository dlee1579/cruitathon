from flask import Flask, render_template, request
from sqlalchemy import Column, Integer, String, Numeric
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
import plotly.express as px


logging.basicConfig(level=logging.DEBUG)

Base = declarative_base()

class Recruits(Base):
    __tablename__ = "Recruits"
    player_id = Column(Integer, primary_key =  True)
    name = Column(String)
    team = Column(String)
    position = Column(String)
    score = Column(Numeric)
    hometown = Column(String)
    state = Column(String)

class Teams(Base):
    __tablename__ = "Teams"
    team_id = Column(Integer, primary_key=True)
    team = Column(String)
    conference = Column(String)
    mascot = Column(String)
    city = Column(String)
    state = Column(String)

class Offers(Base):
    __tablename__ = "Offers"
    offer_id = Column(Integer, primary_key=True)
    player_id = Column(Integer)
    offer = Column(String)

def pos_dist_plot(pos_dist):
    data = [
        go.Pie(
            labels=pos_dist["position"],
            values=pos_dist["player_id"]
        )
    ]
    graphJSON = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)
    return graphJSON

def state_dist_plot(state_dist):
    data = [
        go.Pie(
            labels=state_dist["state"],
            values=state_dist["player_id"]
        )
    ]
    graphJSON = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)
    return graphJSON

def competition_plot(comp_dist):
    # df = pd.DataFrame({'x': competitors, 'y': count_comp}) # creating a sample dataframe

    data = [
        go.Bar(
            x=comp_dist['offer'], # assign x as the dataframe column 'x'
            y=comp_dist['offer_count']
        )
    ]
    graphJSON = json.dumps(data, cls=plotly.utils.PlotlyJSONEncoder)
    return graphJSON

db = create_engine("postgres+psycopg2://vjlpuguktrkyxc:75f49540a175bf9ffc0b5c6172cd3303d035f5c93c92e7256c9201ce4cf9a303@ec2-34-235-108-68.compute-1.amazonaws.com:5432/dd3fi28k9rhe31")
# db = create_engine('mysql+pymysql://f3hlBYQiVA:a74UGArRfC@remotemysql.com/f3hlBYQiVA', echo=True, poolclass=NullPool)

Session = sessionmaker(bind = db)
session = Session()
# recruits = session.query(Recruits)
teams = session.query(Teams.team, Teams.conference).all()
# competition = session.query(Recruits.team, Offers.team_offered, func.count(Offers.team_offered))\
#     .join(Recruits, Offers.player_id==Recruits.id)\
#     .group_by(Recruits.team, Offers.team_offered)\
#     .having(Recruits.team!=Offers.team_offered)\
#     .having(func.count(Offers.team_offered)>7)

session.close()

teamlist = []
teams_df =  pd.read_sql_table("Teams",db)
print(teams_df)
for row in teams:
    teamlist.append(row.team)
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
    # print(recruits_df)

    # fig = px.pie(recruits_df, values="position", names="position")
    # fig.show()
    pos_dist = recruits_df.groupby(by="position").count().reset_index().sort_values("player_id")[["position", "player_id"]]
    pos_pie = pos_dist_plot(pos_dist)

    state_dist = recruits_df.groupby(by="state").count().reset_index().sort_values("player_id")[["state", "player_id"]]
    state_pie = state_dist_plot(state_dist)

    competition_query = '''
    select team, offer, count(offer) as offer_count from 
    (
    select o.player_id, team, offer from "Offers" o
    join "Recruits" r on o.player_id =r.player_id
    where team = '{}'
    and team <> offer
    ) t
    group by team, offer
    order by offer_count desc
    limit 8
    '''
    comp_dist = pd.read_sql_query(competition_query.format(team_selected), session.bind)
    print(type(comp_dist))
    comp_bar = competition_plot(comp_dist)
    # print(comp_dist)
    session.close()

    # competition = session.query(Recruits.team, Offers.offer, func.count(Offers.offer))\
    #     .join(Recruits, Offers.player_id==Recruits.player_id)\
    #     .group_by(Recruits.team, Offers.offer)\
    #     .having(Recruits.team!=Offers.offer)\

    # posplot=pos_pie, stateplot = state_pie
    return render_template("./team_view.html", team_selected=team_selected, posplot=pos_pie, stateplot = state_pie, compplot = comp_bar)

# @app.route("/submit", methods=['POST'])
# def submit():
#     # db = create_engine('mysql+mysqldb://f3hlBYQiVA:a74UGArRfC@remotemysql.com/f3hlBYQiVA', echo=True, poolclass=NullPool)
#     # Session = sessionmaker(bind = db)
#     session = Session()
#     competition = session.query(Recruits.team, Offers.team_offered, func.count(Offers.team_offered))\
#         .join(Recruits, Offers.player_id==Recruits.player_id)\
#         .group_by(Recruits.team, Offers.team_offered)\
#         .having(Recruits.team!=Offers.team_offered)\
#         # .limit(8)
#         # .having(func.count(Offers.team_offered)>7)\
#         # .limit(8)
#     team_selected = request.form["team_selected"]
#     competition_results = competition.having(Recruits.team==team_selected).order_by(func.count(Offers.team_offered).desc()).limit(8)
#     session.close()
#     # db.dispose()
#     # print(competition_results)
#     competitors = [x[1] for x in competition_results]
#     count_comp = [x[2] for x in competition_results]
    
#     result = recruits.filter(Recruits.team==team_selected)
#     commit_list = []
#     position_list = []
#     team_data = pd.DataFrame(columns=["name", "position"])
#     for r in result:
#         commit_list.append(r.name)
#         position_list.append(r.position)
#         # team_data.append([r.name, r.position])
#         # print(r.name, r.position)
#     team_data["name"]=commit_list
#     team_data["position"]=position_list
#     bar = competition_plot(competitors=competitors, count_comp=count_comp)

#     return render_template("/index.html", teams=teamlist, team_selected=team_selected, team_data=team_data, competition_results=competition_results, plot=bar)


if __name__ == "__main__":
    app.debug = True
    app.run()

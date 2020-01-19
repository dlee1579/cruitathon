from flask import Flask, render_template, request
from sqlalchemy import Column, Integer, String
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import func
import logging
import pandas as pd
logging.basicConfig(level=logging.DEBUG)

Base = declarative_base()

class Recruits(Base):
    __tablename__ = "recruits"
    id = Column(Integer, primary_key =  True)
    name = Column(String)
    team = Column(String)
    position = Column(String)

class Teams(Base):
    __tablename__ = "teams"
    team_name = Column(String, primary_key=True)
    conference = Column(String)

class Offers(Base):
    __tablename__ = "offers"
    column_not_exist_in_db = Column(Integer, primary_key=True) # just add for sake of this error, dont add in db
    player_id = Column(Integer)
    team_offered = Column(String)


db = create_engine("postgresql+psycopg2://postgres:Dl1579icn33@localhost:5432/cruitathon")

Session = sessionmaker(bind = db)
session = Session()
recruits = session.query(Recruits)
teams = session.query(Teams).all()
competition = session.query(Recruits.team, Offers.team_offered, func.count(Offers.team_offered))\
    .join(Recruits, Offers.player_id==Recruits.id)\
    .group_by(Recruits.team, Offers.team_offered)\
    .having(Recruits.team!=Offers.team_offered)
# for item in a:

# team_results =

# result_set = db.execute("SELECT team_name FROM teams")

teamlist = []
for row in teams:
    teamlist.append(row.team_name)
    # print(r[0])
# print(teamlist)

app = Flask(__name__, template_folder="templates")

@app.route("/")
def index():
    return render_template("/index.html", teams=teamlist)

@app.route("/submit", methods=['POST'])
def submit():
    team_selected = request.form["team_selected"]
    competition_results = competition.having(Recruits.team==team_selected).order_by(func.count(Offers.team_offered).desc()).all()
    # print(competition_results.__dict__)
        # print(item)
    # result_set = db.execute("select * from recruits where team = '{}';".format(team_selected))
    result = recruits.filter(Recruits.team==team_selected)
    commit_list = []
    position_list = []
    team_data = pd.DataFrame(columns=["name", "position"])
    for r in result:
        commit_list.append(r.name)
        position_list.append(r.position)
        # team_data.append([r.name, r.position])
    team_data["name"]=commit_list
    team_data["position"]=position_list
    # print(team_data)
    # for key, a in team_data.iterrows():
        # print(a)
    # team_dict = {"commit_list": commit_list, "position_list": position_list}
    return render_template("/index.html", teams=teamlist, team_selected=team_selected, team_data=team_data, competition_results=competition_results)
    

if __name__ == "__main__":
    app.debug = True
    app.run()
    # print(result)
    # for r in result:
    #     print(r.position)
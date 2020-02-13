import MySQLdb
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String


# myDB = MySQLdb.connect(host="remotemysql.com",port=3306,user="f3hlBYQiVA",passwd="a74UGArRfC",db="f3hlBYQiVA")
# cHandler = myDB.cursor()
# cHandler.execute("SHOW TABLES")
# results = cHandler.fetchall()
# for items in results:
#     print(items[0])

# Username: f3hlBYQiVA
# Database name: f3hlBYQiVA
# Password: a74UGArRfC
# Server: remotemysql.com
# Port: 3306

engine = create_engine('mysql+mysqldb://f3hlBYQiVA:a74UGArRfC@remotemysql.com/f3hlBYQiVA', echo=True)
# print(engine)

Session = sessionmaker(bind = engine)
session = Session()
# print(session)

Base = declarative_base()

class Recruits(Base):
    __tablename__ = "Recruits"
    id = Column(Integer, primary_key =  True)
    name = Column(String)
    team = Column(String)
    position = Column(String)

class Offers(Base):
    __tablename__ = "Offers"
    column_not_exist_in_db = Column(Integer, primary_key=True) # just add for sake of this error, dont add in db
    player_id = Column(Integer)
    team_offered = Column(String)

recruits = session.query(Recruits).all()
print(len(recruits))
# for r in recruits:
    # print(r.__dict__)
for r in recruits[0:5]:
    print(r.__dict__)
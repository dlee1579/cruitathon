import pandas as pd
from ast import literal_eval
import numpy as np
from sqlalchemy import create_engine
from sqlalchemy.pool import NullPool
# import psycopg2

def create_recruits_table(csv_filepath):
    df = pd.read_csv(csv_filepath, index_col="player_id").dropna().reset_index()
    col = ["player_id", "name", "team", "url", "position", "score", "hometown", "state"]
    df["offers"] = df["offers"].replace("[]", np.NaN)
    df = df.dropna()
    df["hometown"] = df["hometown"].apply(lambda x: x[x.find(("("))+1:x.find(",")])
    offers = df["offers"].apply(literal_eval)
    # print(df.offers[0])
    try:
        df["team"] = offers.apply(lambda x:x[0])
    except:
        df = df[offers != []]
        # df.offers.where(df.offers==[],)
        df["team"] = offers.apply(lambda x:x[0])
    
    # ONLY RUN ONCE
    # df["name"] = df["name"].str.replace("'", "''")

    # print(df["name"].find("'")>0)
    df[col].set_index("player_id").to_csv("/Users/dlee/Documents/workspace/cruitathon/raw_data/recruit_master_file_v2.csv")
    return df[col]

def create_offers_table(csv_filepath):
    df = pd.read_csv(csv_filepath, index_col="player_id").dropna().reset_index()
    df["offers"] = df["offers"].replace("[]", np.NaN)
    df = df.dropna()[["player_id", "offers"]]
    df["offers"] = df["offers"].apply(literal_eval)
    id_list = []
    offer_list =[]
    for i in df.index:
        player_offers = df.loc[i, "offers"]
        for o in player_offers:
            # print(df.loc[i, "player_id"], o)
            id_list.append(df.loc[i, "player_id"])
            offer_list.append(o)
    offers_df = pd.DataFrame(columns=["player_id", "offers"])
    offers_df["player_id"] = id_list
    offers_df["offers"] = offer_list
    offers_df.to_csv("/Users/dlee/Documents/workspace/cruitathon/raw_data/offers_master_file_v2.csv")
    print(offers_df)

def clean_table(df):
    pass

if __name__ == "__main__":
    filepath = "/Users/dlee/Documents/workspace/cruitathon/raw_data/recruit_master_file.csv"
    # df = create_recruits_table(filepath)
    # df = create_offers_table(filepath)
    # print(df.loc[140, "name"])
    offers_path = "raw_data/offers_master_file_v3.csv"
    recruits_path = "raw_data/recruit_master_file_v2.csv"
    teams_path = "raw_data/teams_list.csv"

    db_uri = "postgres+psycopg2://vjlpuguktrkyxc:75f49540a175bf9ffc0b5c6172cd3303d035f5c93c92e7256c9201ce4cf9a303@ec2-34-235-108-68.compute-1.amazonaws.com:5432/dd3fi28k9rhe31"
    engine = create_engine(db_uri, poolclass = NullPool, echo=True)
    offers = pd.read_csv(offers_path)
    offers.to_sql("Offers",con=engine, if_exists='replace', index=False, chunksize=100)
    print(offers)
    engine.dispose()
    # engine.
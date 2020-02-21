from recruiting.team_recruiting import *
import pandas as pd
import time
import os

if __name__ == "__main__":
    # df = pd.read_csv("/Users/dlee/Documents/workspace/cruitathon/raw_data/teams_list.csv", index_col=False)
    # # print(df)
    # print("Starting recruit data collection.")
    # start = time.time()
    # for team_name in df.team:
    #     team = team_recruits(team_name=team_name)
    #     print("Collecting offer data for {}...".format(team_name))
    #     team.populate_offers()
    #     print("{} offer data saved to csv file".format(team_name))

    # end = time.time()
    # print("Total duration elapsed for recruit data scraping: {} seconds".format(end-start))
    
    os.chdir("/Users/dlee/Documents/workspace/cruitathon/raw_data/")
    # team_data_list = []
    team_data_list = [pd.read_csv(x,index_col=False) for x in os.listdir() if "commit data.csv" in x]
        # print(x)
    df = pd.concat(team_data_list).reset_index().drop(columns="index")
    # print(df[df["offers"]])
    print(df[df.offers.isnull()].shape)
    # print(df.offers)

    print("starting offer fix process now")

    df.loc[df.offers.isnull(), "url"] = df[df.offers.isnull()]["url"].apply(lambda x:"{}/high-school".format(x))

    # df.loc[df.offers.isnull()].to_csv("empty offers.csv")

    for i in df.loc[df.offers.isnull()].index:
        # try:
            # print(i)
            # print(df.iloc[i])
        # if "high-school" not in df.loc[i, "url"]:
        #     df.loc[i, "url"] = "{}/high-school/".format(df.loc[i, "url"])
        # print(df.loc[i, "url"])
        p = player(name=df.loc[i, "name"], position=df.loc[i, "position"], score=df.loc[i, "score"], url=df.loc[i, "url"])
        # print(p.get_offers())
        print(i)
        df.iloc[i]["offers"] = p.get_offers()
        print(p.offers_url)
        # print(df.loc[i, "offers"])
        print("fixed {} offers".format(p.name))
        # except:
        #     print("some error occurred")
        #     pass
    print("offer fix finished")

    print(df[df.offers.isnull()]["url"])

    df.to_csv("master data.csv",index=False)
    

from bs4 import BeautifulSoup
import requests
import pandas as pd
import time

def get_offers_fix(url):
    # majority of issues for offers collecting is occurring because 
    # prospect url changes after committing to and enrolling at school.
    # need to append '/high-school/' OR '/junior-college/' to url to get prospect url
    if "high-school" not in url:
        url = "{}/high-school/".format(url)

    header = {
            "User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.75 Safari/537.36",
            "X-Requested-With": "XMLHttpRequest"
        }
    r = requests.get(url, headers=header)
    data = r.text
    soup = BeautifulSoup(data, features="html.parser")

    try:
        offers_url = soup.find("a", class_="college-comp__view-all").get("href")
    except AttributeError:
        print("Bypassing player offers due to error.")
        return None

    r = requests.get(offers_url, headers=header)
    # moving onto new url to extract offers
    data = r.text
    soup = BeautifulSoup(data, features="html.parser")
    team_name = soup.find("li", class_="institution-name")
    block = soup.find("ul", class_="recruit-interest-index_lst")
    li = block.find_all("div", class_="left")
    offers_list = []
    for line in li:
        if line.a.text.endswith(" "):
            offers_list.append(line.a.text[0:len(line.a.text) - 1])
        else:
            offers_list.append(line.a.text)
    if team_name in offers_list:
        offers_list.remove(team_name)
    offers = offers_list
    return offers_list

if __name__ == "__main__":
    # url = "https://247sports.com/player/dylan-downing-45573225/high-school"
    # print(get_offers_fix(url))

    # empty_path = "/Users/dlee/Documents/workspace/cruitathon/raw_data/empty offers.csv"
    # df = pd.read_csv(empty_path, index_col="player_id")
    # # df.to_csv(empty_path)
    # print(df)

    # print("starting scraping fix for empty offers - {} rows".format(len(df.index)))
    # # start = time.time()
    # # df["offers"] = df["url"].apply(get_offers_fix)
    # # end = time.time()
    # print("total time elapsed: {} seconds".format(end-start))
    # # print(offers_test)
    # df.to_csv("/Users/dlee/Documents/workspace/cruitathon/raw_data/empty offers_2.csv")

    master_url = "/Users/dlee/Documents/workspace/cruitathon/raw_data/master data.csv"
    fix_url = "/Users/dlee/Documents/workspace/cruitathon/raw_data/empty offers_2.csv"
    df = pd.read_csv(master_url, index_col="player_id")
    fix = pd.read_csv(fix_url, index_col="player_id")
    df.update(fix)

    print(fix)

    print(df[df.offers.isnull()])

    df.to_csv("/Users/dlee/Documents/workspace/cruitathon/raw_data/recruit_master_file.csv")

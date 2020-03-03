import requests
from bs4 import BeautifulSoup

def fix_get_offers(url):
    header = {
            "User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.75 Safari/537.36",
            "X-Requested-With": "XMLHttpRequest"
        }

    if "high-school/" not in url:
        url = "{}/high-school".format(url)

    r = requests.get(url, headers=header)
    data = r.text
    soup = BeautifulSoup(data, features="html.parser")
    offers_url = soup.find("a", class_="college-comp__view-all").get("href")

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
    # offers = offers_list
    return offers_list

if __name__ == "__main__":
    url = "https://247sports.com/player/bryce-young-93127/"
    offers_list = fix_get_offers(url)
    print(offers_list)
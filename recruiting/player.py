from recruiting import *


class player(object):
    def __init__(self, name="", position="", score=0, url=""):
        self.name = name
        self.position = position
        self.score = score
        self.url = url
        self.offers = []
        self.offers_url = ""
        self.team_name = ""

    def get_offers(self):
        header = {
            "User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.75 Safari/537.36",
            "X-Requested-With": "XMLHttpRequest"
        }
        r = requests.get(self.url, headers=header)
        data = r.text
        soup = BeautifulSoup(data, features="html.parser")
        self.offers_url = soup.find("a", class_="college-comp__view-all").get("href")

        r = requests.get(self.offers_url, headers=header)
        # moving onto new url to extract offers
        data = r.text
        soup = BeautifulSoup(data, features="html.parser")
        self.team_name = soup.find("li", class_="institution-name")
        block = soup.find("ul", class_="recruit-interest-index_lst")
        li = block.find_all("div", class_="left")
        offers_list = []
        for line in li:
            if line.a.text.endswith(" "):
                offers_list.append(line.a.text[0:len(line.a.text) - 1])
            else:
                offers_list.append(line.a.text)
        if self.team_name in offers_list:
            offers_list.remove(self.team_name)
        self.offers = offers_list
        return offers_list

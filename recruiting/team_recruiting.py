# from . import player
from .player import *
import requests
from bs4 import BeautifulSoup
import os
import pandas as pd

# from recruiting import *


class team_recruits(object):
	def __init__(self, team_name="Georgia Tech", year=2020):
		self.team_name = team_name
		self.year = year
		url = "https://247sports.com/college/{}/Season/{}-Football/Commits/".format(team_name.lower(), year).replace(" ", "-")
		columns = ["name", "url", "position", "score", "hometown", "offers", "state"]
		names = []
		urls = []
		scores = []
		positions = []
		hometowns = []
		states = []
		header = {
			"User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.75 Safari/537.36",
			"X-Requested-With": "XMLHttpRequest"
		}
		# try:
		r = requests.get(url, headers=header)
		# except AttributeError:
		#     print("Invalid team name. Please enter appropriate team name.")
			# sys.exit(1)

		self.df = pd.DataFrame(columns=columns)

		data = r.text
		soup = BeautifulSoup(data, features="html.parser")

		try:
			self.team_name = soup.find("a", class_="plldwn_team tltp_click tltp_bm").text
		except AttributeError:
			print("Invalid team name. Please enter appropriate team name.")
			# sys.exit(1)
			return None

		while self.team_name.endswith(" "):
			self.team_name = self.team_name[0:len(self.team_name)-1]

		for entry in soup.find_all("div", class_="wrapper"):
			name_url = entry.find("a", class_="ri-page__name-link")
			name = name_url.text
			url = "https:" + name_url.get("href")
			score = entry.find("span", class_="score").text
			position = entry.find("div", class_="position").text
			hometown = entry.find("span", class_="meta").text
			state = hometown[hometown.find(", ")+2:hometown.find(", ")+4]
			if position[0] == " ":
				position = position[1:]

			names.append(name)
			urls.append(url)
			scores.append(score)
			positions.append(position)
			hometowns.append(hometown)
			states.append(state)

		self.df["name"] = names
		self.df["url"] = urls
		self.df["score"] = scores
		self.df["position"] = positions
		self.df["hometown"] = hometowns
		self.df["state"] = states

	def populate_offers(self):
		os.chdir("../raw_data")
		team_data_file = "{} commit data.csv".format(self.team_name.lower())

		if team_data_file in os.listdir():
			print("Bypassing majority of team data collection because csv file already exists.")
			team_data = pd.read_csv(team_data_file)
			if "Unnamed: 0" in team_data.columns:
				team_data.drop(columns=team_data.columns[0], inplace=True)
			team_data["offers"] = pd.eval(team_data["offers"])
			# self.df = team_data
			old_df = team_data
			new_df = self.df
			old = old_df.name
			new = new_df.name
			to_add = list(set(new) - set(old))    # ONLY NEW ADDITIONS; NEED TO ACCOUNT FOR ITEMS NO LONGER PRESENT
			to_drop = list(set(old) - set(new))
			print("Players to ADD: {}".format(to_add))
			print("Players to REMOVE: {}".format(to_drop))
			team_data = team_data.append(new_df[new_df.name.isin(to_add)])
			team_data = team_data.drop(old_df[old_df.name.isin(to_drop)].index)
			team_data = team_data.reset_index().drop(columns="index")
			# self.df = team_data

			for i in team_data.loc[team_data.offers.isna()].index:
				recruit = player()
				recruit.url = team_data.iloc[i].url
				team_data.iloc[i].offers = recruit.get_offers()
				print(team_data.iloc[i])
			self.df = team_data
			self.df.to_csv("{} commit data.csv".format(self.team_name.lower()), index=False)
			return self.df
		else:
			for i in self.df.index:
				recruit = player()
				recruit.url = self.df.iloc[i].url
				self.df.iloc[i].offers = recruit.get_offers()
				print(self.df.iloc[i])
			self.df.to_csv("{} commit data.csv".format(self.team_name.lower()), index=False)
			return self.df

	def count_offers(self):
		all_offers = []
		df = pd.DataFrame(columns=["Team", "OfferCount"])
		for i in self.df.offers:
			if type(i) != float:
				all_offers += i
		#         all_offers.remove("Georgia Tech")
		all_schools = list(set(all_offers))
		all_schools.remove(self.team_name)
		all_offers.remove(self.team_name)
		teamlist = []
		offercountlist = []
		for team in all_schools:
			teamlist.append(team)
			offercountlist.append(all_offers.count(team))

		df.Team = teamlist
		df.OfferCount = offercountlist
		return df

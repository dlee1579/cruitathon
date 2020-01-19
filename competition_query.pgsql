select team, team_offered, count(team_offered) from offers
join recruits on offers.player_id=recruits.id
group by team, team_offered
having team != team_offered
AND
team='team'
order by count(team_offered) desc
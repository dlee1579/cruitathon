-- -- select * from offers
-- select team, team_offered, count(team_offered) as total from recruits
-- join offers on recruits.id = offers.player_id
-- group by team, team_offered
-- having team != team_offered
-- and team_offered='Tennessee'
-- order by total desc
-- where team = 'Georgia Tech';
select team, count(team) as prospects from (
select distinct name, team, state from recruits
join offers on offers.player_id = recruits.id
where state= 'KS'
) t
group by team
order by prospects desc
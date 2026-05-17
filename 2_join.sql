SELECT 
    p.player_name,
    t.team_name,
    l.league_name
FROM players p
JOIN teams t ON p.team_id = t.team_id
JOIN leagues l ON t.league_id = l.league_id;
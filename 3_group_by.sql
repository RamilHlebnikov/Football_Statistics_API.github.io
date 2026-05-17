SELECT 
    t.team_name,
    SUM(ps.goals) AS total_goals
FROM teams t
JOIN players p ON t.team_id = p.team_id
JOIN player_stats ps ON p.player_id = ps.player_id
GROUP BY t.team_name;
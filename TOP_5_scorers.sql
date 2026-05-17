SELECT 
    p.player_name,
    ps.goals
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id
ORDER BY ps.goals DESC
LIMIT 5;
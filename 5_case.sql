SELECT 
    p.player_name,
    ps.goals,
    CASE
        WHEN ps.goals >= 20 THEN 'Топ игрок'
        WHEN ps.goals >= 10 THEN 'Средний игрок'
        ELSE 'Слабый игрок'
    END AS category
FROM players p
JOIN player_stats ps ON p.player_id = ps.player_id;
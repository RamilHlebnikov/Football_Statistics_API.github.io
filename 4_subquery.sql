SELECT player_name
FROM players
WHERE player_id IN (
    SELECT player_id
    FROM player_stats
    WHERE goals > (
        SELECT AVG(goals)
        FROM player_stats
    )
);
-- создание таблиц
CREATE TABLE leagues (
    league_id SERIAL PRIMARY KEY,
    league_name VARCHAR(100) NOT NULL,
    country VARCHAR(100)
);

CREATE TABLE teams (
    team_id SERIAL PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    league_id INT REFERENCES leagues(league_id),
    matches_played INT,
    goals_for INT,
    goals_against INT,
    points INT
);

CREATE TABLE players (
    player_id SERIAL PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(100),
    team_id INT REFERENCES teams(team_id)
);

CREATE TABLE player_stats (
    stat_id SERIAL PRIMARY KEY,
    player_id INT REFERENCES players(player_id),
    goals INT,
    assists INT
);

-- заполнение данными
INSERT INTO leagues (league_name, country) VALUES
('Saudi Pro League', 'Saudi Arabia'),
('AFC Champions League', 'Asia'),
('Club Friendly Matches', 'World');

INSERT INTO teams (team_name, league_id, matches_played, goals_for, goals_against, points) VALUES
('Аль-Наср', 1, 30, 81, 21, 79),
('Аль-Хиляль', 1, 29, 76, 25, 71),
('Аль-Ахли', 1, 29, 55, 22, 66),
('Аль-Кадисия', 1, 30, 71, 31, 65),
('Аль-Таавун', 1, 30, 52, 40, 49),
('Аль-Иттихад', 1, 29, 47, 38, 48),
('Аль-Иттифак', 1, 30, 44, 51, 45),
('Неом СК', 1, 30, 38, 42, 40);

INSERT INTO players (player_name, nationality, team_id) VALUES
('Криштиану Роналду', 'Португалия', 1),
('Жоау Феликс', 'Португалия', 1),
('Кингсли Коман', 'Франция', 1),
('Садио Мане', 'Сенегал', 1),
('Иньиго Мартинес', 'Испания', 1),
('Карим Бензема', 'Франция', 2),
('Малком', 'Бразилия', 2),
('Сергей Милинкович-Савич', 'Сербия', 2),
('Маркус Леонардо', 'Бразилия', 2),
('Рияд Марез', 'Алжир', 3),
('Иван Тони', 'Англия', 3),
('Энцо Милло', 'Франция', 3),
('Жулиан Киньонес', 'Мексика', 4),
('Матео Ретеги', 'Италия', 4),
('Начо', 'Испания', 4),
('Рожер Мартинес', 'Колумбия', 5),
('Мусса Барроу', 'Гамбия', 5),
('Карим Эль-Беркауи', 'Марокко', 5),
('Стивен Бергвейн', 'Нидерланды', 6),
('Нголо Канте', 'Франция', 6),
('Мусса Диаби', 'Франция', 6),
('Джорджиньо Вейналдум', 'Нидерланды', 7),
('Мусса Дембеле', 'Франция', 7),
('Витиньо', 'Бразилия', 7),
('Александр Ляказетт', 'Франция', 8),
('Саид Бенрахма', 'Алжир', 8),
('Александр Митрович', 'Сербия', 2);

INSERT INTO player_stats (player_id, goals, assists) VALUES
(1, 25, 2),
(2, 16, 12),
(3, 9, 10),
(4, 9, 5),
(5, 3, 0),
(6, 16, 2),
(7, 7, 9),
(8, 7, 5),
(9, 12, 1),
(10, 4, 7),
(11, 27, 6),
(12, 2, 2),
(13, 28, 2),
(14, 16, 1),
(15, 8, 6),
(16, 20, 2),
(17, 3, 3),
(18, 10, 11),
(19, 5, 3),
(20, 2, 1),
(21, 2, 6),
(22, 15, 6),
(23, 6, 2),
(24, 8, 8),
(25, 11, 4),
(26, 7, 7),
(27, 12, 3);
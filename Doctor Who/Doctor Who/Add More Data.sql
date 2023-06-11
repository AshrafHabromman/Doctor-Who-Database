USe "Doctor Who"
INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES
(6, 2, 1, 'Regular', 'Rose 2', '2005-03-26', 1, 1, 'First episode of the revived series 2.'),
(7, 2, 2, 'Regular', 'The End of the World 2', '2006-04-02', 2, 2, 'Introduces the Face of Boe 2.'),
(8, 2, 3, 'Regular', 'The Unquiet Dead 2', '2006-04-09', 3, 3, 'Set in Victorian Cardiff 2.'),
(9, 2, 4, 'Regular', 'Aliens of London 2', '2006-04-16', 4, 1, 'Two-parter featuring the Slitheen 2.'),
(10, 2, 5, 'Regular', 'World War Three 2', '2006-04-23', 5, 5, 'Continuation of the Slitheen story 2.');


Go

INSERT INTO tblEpisodeCompanion (EpisodeCompanionId, EpisodeId, CompanionId)
VALUES
(6, 6, 1),
(7, 7, 1),
(8, 8, 3),
(9, 9, 5),
(10, 10, 5);

INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId)
VALUES
(6, 6, 1),
(7, 7, 2),
(8, 8, 2),
(9, 9, 4),
(10, 10, 4);
USE "Doctor Who"
INSERT INTO tblAuthor (AuthorId, AuthorName)
VALUES
(1, 'Russell T Davies'),
(2, 'Steven Moffat'),
(3, 'Chris Chibnall'),
(4, 'Terrance Dicks'),
(5, 'Robert Holmes');


INSERT INTO tblDoctor (DoctorId, DoctorNumber, DoctorName, BirthDate, FirstEpisodeDate, LastEpisodeDate)
VALUES
(1, 9, 'Christopher Eccleston', '1964-02-16', '2005-03-26', '2005-06-18'),
(2, 10, 'David Tennant', '1971-04-18', '2005-06-18', '2010-01-01'),
(3, 11, 'Matt Smith', '1982-10-28', '2010-04-03', '2013-12-25'),
(4, 12, 'Peter Capaldi', '1958-04-14', '2013-12-25', '2017-12-25'),
(5, 13, 'Jodie Whittaker', '1982-06-17', '2017-12-25', '2022-10-31');


Go

INSERT INTO tblEnemy (EnemyId, EnemyName, Description)
VALUES
(1, 'Daleks', 'Mutated Kaleds inside armored travel machines.'),
(2, 'Cybermen', 'Humans who have undergone cybernetic upgrades.'),
(3, 'Weeping Angels', 'Quantum-locked alien beings that can only move when not observed.'),
(4, 'The Master', 'Time Lord and recurring nemesis of the Doctor.'),
(5, 'Silence', 'Alien religious order that cannot be remembered once observed.');

INSERT INTO tblCompanion (CompanionId, CompanionName, WhoPlayed)
VALUES
(1, 'Rose Tyler', 'Billie Piper'),
(2, 'Amy Pond', 'Karen Gillan'),
(3, 'Clara Oswald', 'Jenna Coleman'),
(4, 'Donna Noble', 'Catherine Tate'),
(5, 'Martha Jones', 'Freema Agyeman');

Go


INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES
(1, 1, 1, 'Regular', 'Rose', '2005-03-26', 1, 1, 'First episode of the revived series.'),
(2, 1, 2, 'Regular', 'The End of the World', '2005-04-02', 2, 2, 'Introduces the Face of Boe.'),
(3, 1, 3, 'Regular', 'The Unquiet Dead', '2005-04-09', 3, 3, 'Set in Victorian Cardiff.'),
(4, 1, 4, 'Regular', 'Aliens of London', '2005-04-16', 4, 1, 'Two-parter featuring the Slitheen.'),
(5, 1, 5, 'Regular', 'World War Three', '2005-04-23', 5, 5, 'Continuation of the Slitheen story.');


Go

INSERT INTO tblEpisodeCompanion (EpisodeCompanionId, EpisodeId, CompanionId)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);
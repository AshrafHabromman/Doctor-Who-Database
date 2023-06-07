USE "Doctor Who"

CREATE TABLE tblEpisodeEnemy(
EpisodeEnemyId INT NOT NULL PRIMARY KEY,  
EpisodeId INT  CONSTRAINT constraintEpisodeEnemyForeignKey REFERENCES tblEpisode(EpisodeId),
EnemyId INT CONSTRAINT constraintEnemyForeignKey REFERENCES tblEnemy(EnemyId)
)
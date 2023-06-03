USE "Doctor Who"

CREATE TABLE tblEpisodeCompanion(
EpisodeCompanionId INT NOT NULL PRIMARY KEY,  
EpisodeId INT  CONSTRAINT constraintEpisodeForeignKey REFERENCES tblEpisode(EpisodeId),
CompanionId INT CONSTRAINT constraintCompanionForeignKey REFERENCES tblCompanion(CompanionId)
)
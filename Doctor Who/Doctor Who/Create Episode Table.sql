use "Doctor Who"

CREATE TABLE tblEpisode (
EpisodeId INT NOT NULL PRIMARY KEY,
SeriesNumber INT, 
EpisodeNumber INT, 
EpisodeType VARCHAR(50), 
Title VARCHAR(255),
EpisodeDate DATE, 
AuthorId INT CONSTRAINT constraintAuthorForeignKey REFERENCES tblAuthor(AuthorId), 
DoctorId INT CONSTRAINT constraintDoctorForeignKey REFERENCES tblDoctor(DoctorId), 
Notes VARCHAR(500)
)


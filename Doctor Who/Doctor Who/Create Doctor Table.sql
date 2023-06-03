USE "Doctor Who"

CREATE TABLE tblDoctor(
DoctorId INT NOT NULL PRIMARY KEY, 
DoctorNumber INT UNIQUE, 
DoctorName VARCHAR(60), 
BirthDate Date, 
FirstEpisodeDate Date,
LastEpisodeDate Date, 
)
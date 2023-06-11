USE "Doctor Who"

GO 

CREATE PROCEDURE spSummariseEpisodes 

AS
BEGIN 
	(SELECT C.CompanionName, tblCountsRes.Counts
	FROM tblCompanion C
	INNER JOIN (
	SELECT TOP(3) EC.CompanionId, COUNT( EC.CompanionId ) AS Counts
	FROM tblEpisodeCompanion EC
	GROUP BY EC.CompanionId
	ORDER BY Counts DESC) AS tblCountsRes

	ON C.CompanionId = tblCountsRes.CompanionId)


	(SELECT E.EnemyName, tblCountsRes.Counts
	FROM tblEnemy E
	INNER JOIN (
	SELECT TOP(3) EE.EnemyId, COUNT( EE.EnemyId ) AS Counts
	FROM tblEpisodeEnemy EE
	GROUP BY EE.EnemyId
	ORDER BY Counts DESC) AS tblCountsRes

	ON E.EnemyId = tblCountsRes.EnemyId)
END

GO 

EXEC spSummariseEpisodes; 
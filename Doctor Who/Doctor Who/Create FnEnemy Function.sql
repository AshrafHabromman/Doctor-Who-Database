USE "Doctor Who"
Go

CREATE FUNCTION dbo.fnEnemies(@EpisodeId INT)
RETURNS VARCHAR(255)
AS
BEGIN 
	DECLARE @enemies VARCHAR(255)
	SET @enemies = ''

	SELECT @enemies = COALESCE(@enemies + ', ', '') +  E.EnemyName 
	FROM tblEnemy E
	WHERE E.EnemyId IN (
		SELECT DISTINCT EE.EnemyId
		FROM tblEpisodeEnemy EE
		WHERE EE.EpisodeId = @EpisodeId
	)

	RETURN @enemies
END
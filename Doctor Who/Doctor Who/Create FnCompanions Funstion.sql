
CREATE PROCEDURE CreateFnCompanions
AS
BEGIN
    EXEC('
        CREATE FUNCTION dbo.fnCompanions(@EpisodeId INT)
        RETURNS VARCHAR(255)
        AS
        BEGIN
            DECLARE @companions VARCHAR(255);
            SET @companions = '''';

            SELECT @companions = @companions + CompanionName + '', ''
            FROM tblCompanion
            WHERE CompanionId IN (
                SELECT CompanionId
                FROM tblEpisodeCompanion
                WHERE EpisodeId = @EpisodeId
            );

            SET @companions = LEFT(@companions, LEN(@companions) - 1);

            RETURN @companions;
        END;
    ')
END;
GO

EXEC CreateFnCompanions;
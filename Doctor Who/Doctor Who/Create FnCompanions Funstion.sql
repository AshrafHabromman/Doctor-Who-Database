USE [Doctor Who];
Go

CREATE FUNCTION fnCompanions(@EpisodeId INT)
RETURNS VARCHAR(255)
AS
BEGIN
    DECLARE @companions VARCHAR(255);
    SET @companions = '';

    SELECT @companions = COALESCE(@companions + ', ', '') + CompanionName
    FROM tblCompanion
    WHERE CompanionId IN (
        SELECT CompanionId
        FROM tblEpisodeCompanion
        WHERE EpisodeId = @EpisodeId
    );

    RETURN @companions;
END;



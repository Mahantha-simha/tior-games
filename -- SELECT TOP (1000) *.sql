-- SELECT TOP (1000) *
-- FROM PlayerInGameDim
-- INNER JOIN PersonalRecordDim ON PlayerInGameDim.PRID = PersonalRecordDim.PRID
-- INNER JOIN PlayerDim ON PlayerInGameDim.PlayerID = PlayerDim.PlayerID;

SELECT *
FROM PlayerInGameDim
full OUTER JOIN PersonalRecordDim ON PlayerInGameDim.PRID = PersonalRecordDim.PRID
full OUTER JOIN PlayerDim ON PlayerInGameDim.PlayerID = PlayerDim.PlayerID 
WHERE PlayerInGameDim.PlayerID is not null
and PersonalRecordDim.PRID is not NULL 
and PersonalRecordDim.PRKills >= 33
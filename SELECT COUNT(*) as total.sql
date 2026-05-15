SELECT COUNT(*) as total
FROM PlayerInGameDim
full OUTER JOIN PersonalRecordDim ON PlayerInGameDim.PRID = PersonalRecordDim.PRID
full OUTER JOIN PlayerDim ON PlayerInGameDim.PlayerID = PlayerDim.PlayerID 
WHERE PlayerInGameDim.PlayerID is not null
and PersonalRecordDim.PRID is not NULL 
and PersonalRecordDim.PRKills >= 33

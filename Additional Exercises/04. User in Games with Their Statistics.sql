SELECT
	u.Username,
	g.[Name] AS [Game],
	MAX(ch.[Name]) AS [Character],
	SUM(si.Strength) + MAX(gts.Strength) + MAX(chs.Strength) AS Strength,
	SUM(si.Defence) + MAX(gts.Defence) + MAX(chs.Defence) AS Defence,
	SUM(si.Speed) + MAX(gts.Speed) + MAX(chs.Speed) AS Speed,
	SUM(si.Mind) + MAX(gts.Mind) + MAX(chs.Mind) AS Mind,
	SUM(si.Luck) + MAX(gts.Luck) + MAX(chs.Luck) AS Luck
FROM
	Users u
	JOIN UsersGames ug ON u.Id = ug.UserId
	JOIN Games g ON ug.GameId = g.Id
	JOIN GameTypes gt ON g.GameTypeId = gt.Id
	JOIN [Statistics] gts ON gts.Id = gt.BonusStatsId
	JOIN Characters ch ON ug.CharacterId = ch.Id
	JOIN [Statistics] chs ON ch.StatisticId = chs.Id
	JOIN UserGameItems ugi ON ug.Id = ugi.UserGameId
	JOIN Items i ON ugi.ItemId = i.Id
	JOIN [Statistics] si ON i.StatisticId = si.Id
GROUP BY
	u.Username,
	g.[Name]
ORDER BY
	Strength DESC,
	Defence DESC,
	Speed DESC,
	Mind DESC,
	Luck DESC
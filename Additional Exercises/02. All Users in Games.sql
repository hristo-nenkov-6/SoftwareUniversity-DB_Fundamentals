SELECT
	g.[Name] AS [Game],
	gt.[Name] AS [Game Type],
	u.Username,
	ug.[Level],
	ug.Cash,
	c.[Name] AS [Character]
FROM
	Games g
	JOIN GameTypes gt ON g.GameTypeId = gt.Id
	JOIN UsersGames ug ON g.Id = ug.GameId
	JOIN Users u ON ug.UserId = u.Id
	JOIN Characters c ON c.Id = ug.CharacterId
ORDER BY
	[Level] DESC,
	[Username],
	g.[Name]
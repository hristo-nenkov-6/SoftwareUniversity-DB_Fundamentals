CREATE PROC 
usp_GetHoldersWithBalanceHigherThan(@wantedMoney MONEY)
AS
SELECT
	FirstName,
	LastName
FROM
	AccountHolders ah
	JOIN
		Accounts a ON ah.Id = a.AccountHolderId
GROUP BY
	a.AccountHolderId,
	ah.FirstName,
	ah.LastName
HAVING
	SUM(a.Balance) > @wantedMoney
ORDER BY
	FirstName,
	LastName
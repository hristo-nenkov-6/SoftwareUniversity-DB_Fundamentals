SELECT
	ABS(SUM(CCC.Difference)) AS SumDifference
FROM
	(SELECT
		FirstName as [Host Wizard],
		DepositAmount as [Host Wizard Deposit],
		LEAD(FirstName) OVER (ORDER BY Id) as [Guest Wizard],
		LEAD(DepositAmount) OVER (ORDER BY Id) as [Guest Wizard Deposit],
		DepositAmount - LEAD(DepositAmount) OVER (ORDER BY Id) AS [Difference]
	FROM
		WizzardDeposits) AS CCC
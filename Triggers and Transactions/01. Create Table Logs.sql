CREATE TRIGGER tr_AddToLogsOnAccountUpdate
ON
Accounts FOR UPDATE
AS
	INSERT INTO Logs(AccountId, OldSum, NewSum)
	SELECT i.Id, d.Balance, i.Balance
	FROM inserted i
		JOIN deleted d ON i.Id = d.Id
	WHERE d.Balance != i.Balance
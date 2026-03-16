-- Триггер операций после удаления остановки из таблицы Stops
CREATE TRIGGER TR_DeleteStop
	ON Stops
	AFTER DELETE
AS
	-- Поля записи об удаляемой остановке
	DECLARE
		@locTitle    T_NotNullNotEmptyString,
		@locPathCode T_PathCode,
		@locNumber   T_PathBusStopNumber

	-- Выбор удаляемой записи
	SELECT
		@locTitle    = Title,
		@locPathCode = PathCode,
		@locNumber   = Number
	FROM deleted

	ALTER TABLE Stops
		DISABLE TRIGGER TR_UpdateStop
	-- Декремент номеров остановок, следовавших за удалённой
	UPDATE Stops
		SET Number = Number - 1
		WHERE
			PathCode = @locPathCode AND
			Number   > @locNumber
	ALTER TABLE Stops
		ENABLE TRIGGER TR_UpdateStop

	-- Пересчёт вычислимых атрибутов путей маршрута удаляемой остановки
	EXEC SP_SetPathCalculatedCells
		@locPathCode
GO

-- Применение триггера к таблице Stops
ALTER TABLE Stops
	ENABLE TRIGGER TR_DeleteStop
GO
------------------------------------------------------------------------------

-- Триггер операций после удаления билета из таблицы TicketsSale
CREATE TRIGGER TR_DeleteTicketSale
	ON TicketsSale
	AFTER DELETE
AS
	-- Поля записи об удаляемом билете
	DECLARE
		@locDate    T_RunExecutionDate,
		@locRunCode T_RunCode

	-- Выбор удаляемой записи
	SELECT
		@locDate    = [Date],
		@locRunCode = RunCode
	FROM deleted

	-- Пересчёт вычислимых атрибутов расписаний рейсов
	EXEC SP_SetRunExecutionCalculatedCells
		@locDate,
		@locRunCode
GO

-- Применение триггера к таблице TicketsSale
ALTER TABLE TicketsSale
	ENABLE TRIGGER TR_DeleteTicketSale
GO
-- Триггер операций после обновления водителя в таблице Drivers
CREATE TRIGGER TR_UpdateDriver
	ON Drivers
	AFTER UPDATE
AS
	-- Поля записи об изменяемом водителе
	DECLARE
		@locCode            T_BusDriverCode,
		@locNewCode         T_BusDriverCode,
		@locNewPassportData T_PassportData,
		@locNewBirthDay     T_BusDriverBirthDay,
		@locReturnValue     int

	-- Выбор удаляемой записи
	SELECT @locCode = Code
		FROM deleted

	-- Выбор новой записи
	SELECT
			@locNewCode         = Code,
			@locNewPassportData = PassportData,
			@locNewBirthDay     = BirthDay
		FROM inserted

	-- Проверка существования записи, эквивалентной новой
	EXEC @locReturnValue = SP_CheckDriverExistence
		@locNewCode,
		@locNewPassportData,
		FALSE,
		TRUE,
		TRUE,
		NULL

	-- Если новая запись некорректна, то она не заносится в таблицу
	IF @locReturnValue <> 0
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			-- Обновление даты рождения - без учёта времени
			UPDATE Drivers
				SET BirthDay = dbo.FN_DateYYYYMMDD(@locNewBirthDay)
				WHERE BirthDay = @locNewBirthDay

			ALTER TABLE RunsExecution
				DISABLE TRIGGER TR_UpdateRunExecution
			-- Обновление кода
			UPDATE RunsExecution
				SET Code = @locNewCode
				WHERE Code = @locCode
			ALTER TABLE RunsExecution
				ENABLE TRIGGER TR_UpdateRunExecution
		END -- ELSE
GO

-- Применение триггера к таблице Drivers
ALTER TABLE Drivers
	ENABLE TRIGGER TR_UpdateDriver
GO
------------------------------------------------------------------------------

-- Триггер операций после обновления автобуса в таблице Buses
CREATE TRIGGER TR_UpdateBus
	ON Buses
	AFTER UPDATE
AS
	-- Поля записи об изменяемом автобусе
	DECLARE
		@locCarCode          T_CarCode,
		@locNewCarCode       T_CarCode,
		@locNewCategory      T_BusCategory,
		@locNewSeatsQuantity T_BusSeatsQuantity,
		@locReturnValue      int

	-- Выбор удаляемой записи
	SELECT @locCarCode = CarCode
		FROM deleted

	-- Выбор новой записи
	SELECT
			@locNewCarCode       = CarCode,
			@locNewCategory      = Category,
			@locNewSeatsQuantity = SeatsQuantity
		FROM inserted

	-- Проверка существования записи, эквивалентной новой
	EXEC @locReturnValue = SP_CheckBusExistence
		@locNewCarCode,
		@locNewCategory,
		@locNewSeatsQuantity OUTPUT,
		FALSE,
		TRUE,
		NULL

	-- Если новая запись некорректна, то она не заносится в таблицу
	IF @locReturnValue <> 0
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			-- Обновление количества пассажирских мест
			UPDATE Buses
				SET SeatsQuantity = @locNewSeatsQuantity
				WHERE CarCode = @locNewCarCode

			ALTER TABLE RunsExecution
				DISABLE TRIGGER TR_UpdateRunExecution
			-- Обновление автомобильного номера
			UPDATE RunsExecution
				SET BusCarCode = @locNewCarCode
				WHERE BusCarCode = @locCarCode
			ALTER TABLE RunsExecution
				ENABLE TRIGGER TR_UpdateRunExecution
		END -- ELSE
GO

-- Применение триггера к таблице Buses
ALTER TABLE Buses
	ENABLE TRIGGER TR_UpdateBus
GO
------------------------------------------------------------------------------

-- Триггер операций после обновления направления в таблице Directions
CREATE TRIGGER TR_UpdateDirection
	ON Directions
	AFTER UPDATE
AS
	-- Поля записи об изменяемом направлении
	DECLARE
		@locCode        T_DirectionCode,
		@locReturnValue int

	-- Выбор новой записи
	SELECT @locCode = Code
		FROM inserted

	-- Проверка существования записи, эквивалентной новой
	EXEC @locReturnValue = SP_CheckDirectionExistence
		@locCode,
		TRUE,
		NULL

	-- Если новая запись некорректна, то она не заносится в таблицу
	IF @locReturnValue <> 0
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			-- Объявление курсора
			DECLARE C_DirectionPaths SCROLL CURSOR
				FOR
					SELECT Code
						FROM Paths
						WHERE DirectionCode = @locCode

			-- Открытие курсора
			OPEN C_DirectionPaths
				-- Код маршрута
				DECLARE @locPathCode T_PathCode

				-- Поиск первого маршрута направления
				FETCH FIRST
					FROM C_DirectionPaths
					INTO @locPathCode

				-- Расчёт агригированных атрибутов маршрута
				-- с найденным кодом до тех пор, пока не просмотрены
				-- все строки таблицы Paths
				WHILE @@FETCH_STATUS = 0
					BEGIN
						EXEC SP_SetPathCalculatedCells
							@locPathCode

						-- Поиск следующего кода маршрута
						FETCH NEXT
							FROM C_DirectionPaths
							INTO @locPathCode
					END -- WHILE
			-- Закрытие курсора
			CLOSE C_DirectionPaths

			-- Удаление курсора
			DEALLOCATE C_DirectionPaths
		END -- ELSE
GO

-- Применение триггера к таблице Directions
ALTER TABLE Directions
	ENABLE TRIGGER TR_UpdateDirection
GO
------------------------------------------------------------------------------

-- Триггер операций после обновления маршрута в таблице Paths
CREATE TRIGGER TR_UpdatePath
	ON Paths
	AFTER UPDATE
AS
	-- Поля записи об изменяемом маршруте
	DECLARE
		@locCode          T_PathCode,
		@locDirectionCode T_DirectionCode,
		@locReturnValue   int

	-- Выбор новой записи
	SELECT
			@locCode          = Code,
			@locDirectionCode = DirectionCode
		FROM inserted

	-- Проверка существования записи, эквивалентной новой
	EXEC @locReturnValue = SP_CheckPathExistence
		@locCode,
		@locDirectionCode,
		FALSE,
		TRUE,
		NULL

	-- Если новая запись некорректна, то она не заносится в таблицу
	IF @locReturnValue <> 0
		ROLLBACK TRANSACTION
	ELSE
		-- Пересчёт вычислимых атрибутов путей данного маршрута
		EXEC SP_SetPathCalculatedCells
			@locCode
GO

-- Применение триггера к таблице Paths
ALTER TABLE Paths
	ENABLE TRIGGER TR_UpdatePath
GO
------------------------------------------------------------------------------

-- Триггер операций после обновления остановки в таблице Stops
CREATE TRIGGER TR_UpdateStop
	ON Stops
	AFTER UPDATE
AS
	-- Поля записи об изменяемой остановке
	DECLARE
		@locTitle                    T_NotNullNotEmptyString,
		@locPathCode                 T_PathCode,
		@locNumber                   T_BusSeatsQuantity,
		@locNewTitle                 T_NotNullNotEmptyString,
		@locNewPathCode              T_PathCode,
		@locNewNumber                T_BusSeatsQuantity,
		@locNewAfterPreviousDistance T_AfterPathPreviousBusStopDistance,
		@locReturnValue              int

	-- Выбор удаляемой записи
	SELECT
			@locTitle    = Title,
			@locPathCode = PathCode,
			@locNumber   = Number
		FROM deleted

	-- Выбор новой записи
	SELECT
			@locNewTitle                 = Title,
			@locNewPathCode              = PathCode,
			@locNewNumber                = Number,
			@locNewAfterPreviousDistance = AfterPreviousDistance
		FROM inserted

	-- Проверка существования записи, эквивалентной новой
	EXEC @locReturnValue = SP_CheckStopExistence
		@locNewTitle,
		@locNewPathCode,
		FALSE,
		TRUE,
		NULL

	-- Если новая запись некорректна, то она не заносится в таблицу
	IF @locReturnValue <> 0
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			-- Декремент номеров остановок, следовавших за удалённой
			UPDATE Stops
				SET Number = Number - 1
				WHERE
					NOT
					(
						Title    = @locNewTitle AND
						PathCode = @locNewPathCode
					)
					AND
						PathCode = @locPathCode AND
						Number  >= @locNumber

			-- Подсчёт количества остановок нового маршрута
			DECLARE @locPathStopsQuantity tinyint
			SELECT @locPathStopsQuantity = COUNT(*)
				FROM Stops
				WHERE PathCode = @locNewPathCode

			-- Если последний индекс остановки меньше индекса новой остановки,
			-- то остановка будет записана в конец - её номер изменится на последний
			IF (@locNewNumber > @locPathStopsQuantity)
				SET @locNewNumber = @locPathStopsQuantity

			-- Инкремент номеров остановок, которые больше или равны номеру новой
			UPDATE Stops
				SET Number = Number + 1
				WHERE 
					NOT (Title = @locNewTitle)   AND
					PathCode   = @locNewPathCode AND
					Number    >= @locNewNumber

			-- Обновление номера
			UPDATE Stops
				SET Number = @locNewNumber
				WHERE
					Title    = @locNewTitle AND
					PathCode = @locNewPathCode

			-- Пересчёт вычислимых атрибутов путей маршрута удаляемой остановки
			EXEC SP_SetPathCalculatedCells
				@locPathCode

			-- Пересчёт вычислимых атрибутов путей маршрута новой остановки,
			-- если он не эквивалентен маршруту удаляемой остановки
			IF NOT (@locPathCode = @locNewPathCode)
				EXEC SP_SetPathCalculatedCells
					@locNewPathCode
		END -- ELSE
GO

-- Применение триггера к таблице Stops
ALTER TABLE Stops
	ENABLE TRIGGER TR_UpdateStop
GO
------------------------------------------------------------------------------

-- Триггер операций после обновления рейса в таблице RunsTimetable
CREATE TRIGGER TR_UpdateRunTimetable
	ON RunsTimetable
	AFTER UPDATE
AS
	-- Поля записи об изменяемом рейсе
	DECLARE
		@locCode        T_RunCode,
		@locNewCode     T_RunCode,
		@locNewPathCode T_PathCode,
		@locNewTime     T_Time,
		@locReturnValue int

	-- Выбор удаляемой записи
	SELECT @locCode = Code
		FROM deleted

	-- Выбор новой записи
	SELECT
			@locNewCode     = Code,
			@locNewPathCode = PathCode,
			@locNewTime     = [Time]
		FROM inserted

	-- Проверка существования записи, эквивалентной новой
	EXEC @locReturnValue = SP_CheckRunTimetableExistence
		@locNewCode,
		@locNewPathCode,
		FALSE,
		TRUE,
		NULL

	-- Если новая запись некорректна, то она не заносится в таблицу
	IF @locReturnValue <> 0
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			-- Форматирование времени без учёта даты
			UPDATE RunsTimetable
				SET [Time] = dbo.FN_TimeHHMM(@locNewTime)
				WHERE Code   = @locCode

			ALTER TABLE RunsExecution
				DISABLE TRIGGER TR_UpdateRunExecution
			-- Обновление кода
			UPDATE RunsExecution
				SET Code = @locNewCode
				WHERE Code = @locCode
			ALTER TABLE RunsExecution
				ENABLE TRIGGER TR_UpdateRunExecution
		END -- ELSE
GO

-- Применение триггера к таблице RunsTimetable
ALTER TABLE RunsTimetable
	ENABLE TRIGGER TR_UpdateRunTimetable
GO
------------------------------------------------------------------------------

-- Триггер операций после обновления рейса в таблице RunsExecution
CREATE TRIGGER TR_UpdateRunExecution
	ON RunsExecution
	AFTER UPDATE
AS
	-- Поля записи об изменяемом рейсе
	DECLARE
		@locDate        T_RunExecutionDate,
		@locCode        T_RunCode,
		@locBusCarCode  T_CarCode,
		@locDriverCode  T_BusDriverCode,
		@locReturnValue int

	-- Выбор новой записи
	SELECT
			@locDate       = [Date],
			@locCode       = Code,
			@locBusCarCode = BusCarCode,
			@locDriverCode = DriverCode
		FROM inserted

	-- Определение даты без учёта времени
	DECLARE @locFormattedDate T_RunExecutionDate
	SET @locFormattedDate = dbo.FN_DateYYYYMMDD(@locDate)

	-- Проверка существования записи, эквивалентной новой
	EXEC @locReturnValue = SP_CheckRunExecutionExistence
		@locFormattedDate,
		@locCode,
		@locBusCarCode,
		@locDriverCode,
		FALSE,
		TRUE,
		NULL

	-- Если новая запись некорректна, то она не заносится в таблицу
	IF @locReturnValue <> 0
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			-- Форматирование даты
			UPDATE RunsExecution
				SET [Date] = @locFormattedDate
				WHERE
					[Date] = @locDate AND
					Code   = @locCode

			-- Пересчёт вычислимых атрибутов расписаний рейсов
			EXEC SP_SetRunExecutionCalculatedCells
				@locDate,
				@locCode
		END -- ELSE
GO

-- Применение триггера к таблице RunsExecution
ALTER TABLE RunsExecution
	ENABLE TRIGGER TR_UpdateRunExecution
GO
------------------------------------------------------------------------------

-- Триггер операций после обновления билета в таблице TicketsSale
CREATE TRIGGER TR_UpdateTicketSale
	ON TicketsSale
	AFTER UPDATE
AS
	-- Поля записи об изменяемом билете
	DECLARE
		@locDate            T_RunExecutionDate,
		@locRunCode         T_RunCode,
		@locNumber          T_BusSeatNumber,
		@locSaleState       T_BusSeatSaleState,
		@locLuggagePresence T_BusSeatLuggagePresence,
		@locReturnValue     int

	-- Выбор новой записи
	SELECT
			@locDate            = [Date],
			@locRunCode         = RunCode,
			@locNumber          = Number,
			@locSaleState       = SaleState,
			@locLuggagePresence = LuggagePresence
		FROM inserted

	-- Определение даты без учёта времени
	DECLARE @locFormattedDate T_RunExecutionDate
	SET @locFormattedDate = dbo.FN_DateYYYYMMDD(@locDate)

	-- Проверка существования записи, эквивалентной новой
	EXEC @locReturnValue = SP_CheckTicketSaleExistence
		@locDate,
		@locRunCode,
		@locNumber,
		@locSaleState,
		@locLuggagePresence OUTPUT,
		FALSE,
		TRUE,
		NULL

	-- Если новая запись некорректна, то она не заносится в таблицу
	IF @locReturnValue <> 0
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			-- Форматирование даты
			UPDATE TicketsSale
				SET [Date] = @locFormattedDate
				WHERE
					[Date]  = @locDate    AND
					RunCode = @locRunCode AND
					Number  = @locNumber

			-- Пересчёт вычислимых атрибутов расписаний рейсов
			EXEC SP_SetRunExecutionCalculatedCells
				@locDate,
				@locRunCode
		END -- ELSE
GO

-- Применение триггера к таблице TicketsSale
ALTER TABLE TicketsSale
	ENABLE TRIGGER TR_UpdateTicketSale
GO
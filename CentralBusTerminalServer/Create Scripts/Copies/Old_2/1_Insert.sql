-- Триггер операций после записи водителя в таблице Drivers
CREATE TRIGGER TR_InsertDriver
	ON Drivers
	AFTER INSERT
AS
	-- Новая дата рождения водителя
	DECLARE @locBirthDay T_BusDriverBirthDay

	-- Выбор новой записи
	SELECT @locBirthDay = BirthDay
		FROM inserted

	-- Обновление даты рождения - без учёта времени
	UPDATE Drivers
		SET BirthDay = dbo.FN_DateYYYYMMDD(@locBirthDay)
		WHERE BirthDay = @locBirthDay
GO

-- Применение триггера к таблице Drivers
ALTER TABLE Drivers
	ENABLE TRIGGER TR_InsertDriver
GO
------------------------------------------------------------------------------

-- Триггер операций после записи автобуса в таблицу Buses
CREATE TRIGGER TR_InsertBus
	ON Buses
	AFTER INSERT
AS
	-- Поля записи о новом автобусе
	DECLARE
		@locCarCode       T_CarCode,
		@locCategory      T_BusCategory,
		@locSeatsQuantity T_BusSeatsQuantity,
		@locReturnValue   int

	-- Выбор новой записи
	SELECT
			@locCarCode       = CarCode,
			@locCategory      = Category,
			@locSeatsQuantity = SeatsQuantity
		FROM inserted

	-- Проверка существования записи, эквивалентной полученной
	EXEC @locReturnValue = SP_CheckBusExistence
		@locCarCode,
		@locCategory,
		@locSeatsQuantity OUTPUT,
		FALSE,
		TRUE,
		NULL

	-- Если новая запись некорректна, то она не заносится в таблицу
	IF @locReturnValue <> 0
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			ALTER TABLE Buses
				DISABLE TRIGGER TR_UpdateBus
			-- Обновление количесва пассажирских мест
			UPDATE Buses
				SET SeatsQuantity = @locSeatsQuantity
				WHERE CarCode = @locCarCode
			ALTER TABLE Buses
				ENABLE TRIGGER TR_UpdateBus
		END -- ELSE
GO

-- Применение триггера к таблице Buses
ALTER TABLE Buses
	ENABLE TRIGGER TR_InsertBus
GO
------------------------------------------------------------------------------

-- Триггер операций после записи маршрута в таблицу Paths
CREATE TRIGGER TR_InsertPath
	ON Paths
	AFTER INSERT
AS
	-- Поля записи о новом маршруте
	DECLARE
		@locCode          T_PathCode,
		@locDirectionCode T_DirectionCode,
		@locReturnValue   int

	-- Выбор новой записи
	SELECT
			@locCode          = Code,
			@locDirectionCode = DirectionCode
		FROM inserted

	-- Проверка существования записи, эквивалентной полученной
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
		BEGIN
			ALTER TABLE Paths
				DISABLE TRIGGER TR_UpdatePath
			-- Обнуление вычисляемых ячеек
			UPDATE Paths
				SET
					FinalPoint                = NULL,
					Length                    = NULL,
					GazelleCategoryBusExpense = NULL,
					HardCategoryBusExpense    = NULL,
					SoftCategoryBusExpense    = NULL
				WHERE Code = @locCode
			ALTER TABLE Paths
				ENABLE TRIGGER TR_UpdatePath
		END -- ELSE
GO

-- Применение триггера к таблице Paths
ALTER TABLE Paths
	ENABLE TRIGGER TR_InsertPath
GO
------------------------------------------------------------------------------

-- Триггер операций после записи остановки в таблицу Stops
CREATE TRIGGER TR_InsertStop
	ON Stops
	AFTER INSERT
AS
	-- Поля записи о новой остановке
	DECLARE
		@locTitle                 T_NotNullNotEmptyString,
		@locPathCode              T_PathCode,
		@locNumber                T_PathBusStopNumber,
		@locAfterPreviousDistance T_AfterPathPreviousBusStopDistance,
		@locReturnValue           int

	-- Выбор новой записи
	SELECT
			@locTitle                 = Title,
			@locPathCode              = PathCode,
			@locNumber                = Number,
			@locAfterPreviousDistance = AfterPreviousDistance
		FROM inserted

	-- Проверка существования записи, эквивалентной полученной
	EXEC @locReturnValue = SP_CheckStopExistence
		@locTitle,
		@locPathCode,
		FALSE,
		TRUE,
		NULL

	-- Если новая запись некорректна, то она не заносится в таблицу
	IF @locReturnValue <> 0
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			-- Подсчёт количества остановок нового маршрута
			DECLARE @locPathStopsQuantity tinyint
			SELECT @locPathStopsQuantity = COUNT(*)
				FROM Stops
				WHERE PathCode = @locPathCode

			-- Если последний индекс остановки меньше индекса новой остановки,
			-- то остановка будет записана в конец - её номер изменится на последний
			IF (@locNumber > @locPathStopsQuantity)
				SET @locNumber = @locPathStopsQuantity

			ALTER TABLE Stops
				DISABLE TRIGGER TR_UpdateStop
			-- Инкремент номеров остановок, которые больше или равны номеру новой
			UPDATE Stops
				SET Number = Number + 1
				WHERE
					NOT (Title = @locTitle)   AND
					PathCode   = @locPathCode AND
					Number    >= @locNumber
			-- Обновление номера
			UPDATE Stops
				SET Number = @locNumber
				WHERE
					Title    = @locTitle AND
					PathCode = @locPathCode
			ALTER TABLE Stops
				ENABLE TRIGGER TR_UpdateStop

			-- Пересчёт вычислимых атрибутов путей данного маршрута
			EXEC SP_SetPathCalculatedCells
				@locPathCode
		END -- ELSE
GO

-- Применение триггера к таблице Stops
ALTER TABLE Stops
	ENABLE TRIGGER TR_InsertStop
GO
------------------------------------------------------------------------------

-- Триггер операций после записи рейса в таблицу RunsTimetable
CREATE TRIGGER TR_InsertRunTimetable
	ON RunsTimetable
	AFTER INSERT
AS
	-- Поля записи о новом расписании рейса
	DECLARE
		@locCode T_RunCode,
		@locTime T_Time

	-- Выбор новой записи
	SELECT
			@locCode = Code,
			@locTime = [Time]
		FROM inserted

	-- Форматирование времени без учёта даты
	UPDATE RunsTimetable
		SET [Time] = dbo.FN_TimeHHMM(@locTime)
		WHERE Code   = @locCode
GO

-- Применение триггера к таблице RunsExecution
ALTER TABLE RunsTimetable
	ENABLE TRIGGER TR_InsertRunTimetable
GO
------------------------------------------------------------------------------

-- Триггер операций после записи рейса в таблицу RunsExecution
CREATE TRIGGER TR_InsertRunExecution
	ON RunsExecution
	AFTER INSERT
AS
	-- Поля записи о новом рейсе
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

	-- Проверка существования записи, эквивалентной полученной
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
			ALTER TABLE RunsExecution
				DISABLE TRIGGER TR_UpdateRunExecution
			-- Обнуление вычисляемых ячеек и форматирование даты
			UPDATE RunsExecution
				SET
					[Date]              = @locFormattedDate,
					Income              = NULL,
					SoldTicketsQuantity = NULL
				WHERE
					[Date] = @locDate AND
					Code   = @locCode
			ALTER TABLE RunsExecution
				ENABLE TRIGGER TR_UpdateRunExecution
		END -- ELSE
GO

-- Применение триггера к таблице RunsExecution
ALTER TABLE RunsExecution
	ENABLE TRIGGER TR_InsertRunExecution
GO
------------------------------------------------------------------------------

-- Триггер операций после записи билета в таблицу TicketsSale
CREATE TRIGGER TR_InsertTicketSale
	ON TicketsSale
	AFTER INSERT
AS
	-- Поля записи о новом билете
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

	-- Проверка существования записи, эквивалентной полученной
	EXEC @locReturnValue = SP_CheckTicketSaleExistence
		@locFormattedDate,
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
			ALTER TABLE TicketsSale
				DISABLE TRIGGER TR_UpdateTicketSale
			-- Обновление наличия багажа и форматирование даты
			UPDATE TicketsSale
				SET
					[Date]          = @locFormattedDate,
					LuggagePresence = @locLuggagePresence
				WHERE
					[Date]  = @locDate    AND
					RunCode = @locRunCode AND
					Number  = @locNumber
			ALTER TABLE TicketsSale
				ENABLE TRIGGER TR_UpdateTicketSale

			-- Пересчёт вычислимых атрибутов расписаний рейсов
			EXEC SP_SetRunExecutionCalculatedCells
				@locDate,
				@locRunCode
		END -- ELSE
GO

-- Применение триггера к таблице TicketsSale
ALTER TABLE TicketsSale
	ENABLE TRIGGER TR_InsertTicketSale
GO


	-- День недели выполненнго рейса должен соответствовать
	-- дню недели рейса по расписанию,
	-- иначе запись не может быть добавлена
	IF ( @locRunWeekdayID = DATEPART( WEEKDAY, @locDate ) )
		BEGIN
			-- Текущая дата
			SET @locCurrentDate = GETDATE( )

			-- Если дата является текущей на момент добавления новой записи,
			-- то обязятельно должен выполняться ряд условий,
			-- иначе запись не может быть добавлена,
			-- в других же случиях эти условия не влияют и запись надо добавить
			IF
			(
				YEAR ( @locDate ) = YEAR ( @locCurrentDate ) AND
				MONTH( @locDate ) = MONTH( @locCurrentDate ) AND
				DAY  ( @locDate ) = DAY  ( @locCurrentDate )
			)
				BEGIN
					-- Водитель с заданным идентификатором должен быть активен
					IF
					(
						(
							SELECT IsActive
							FROM Drivers
							WHERE ID = @locDriverID
						)
						= 1
					)
						BEGIN
							DECLARE
								-- Признак исправности автобуса
								@locBusIsFaultFree bit,
								-- Признак активности автобуса
								@locBusIsActive    bit

							-- Получение значений атрибутов добавляемого автобуса
							SELECT
								@locBusIsFaultFree = IsFaultFree,
								@locBusIsActive    = IsActive
							FROM Buses
							WHERE ID = @locBusID

							-- Автобус с заданным идентификатором должен быть
							-- активен и исправен
							IF
							(
								@locBusIsActive    = 1 AND
								@locBusIsFaultFree = 1
							)
								BEGIN
									-- Рейс с заданным идентификатором должен быть активен
									IF ( @locBusIsActive = 1 )
										BEGIN
											-- Время выполнения рейса должно быть установлено
											-- не позже текущего
											IF
											(
												DATEPART( HOUR, @locDate        ) <=
												DATEPART( HOUR, @locCurrentDate )
											)
												BEGIN
													-- Если часы времени совпадают с текущими,
													-- то минуты должны быть не больше текущих
													IF
													(
														DATEPART( HOUR, @locDate        ) =
														DATEPART( HOUR, @locCurrentDate )
													)
														BEGIN
															-- Если минуты не больше текущих,
															-- то запись добавляется, иначе - нет
															IF
															(
																DATEPART( MINUTE, @locDate        ) <=
																DATEPART( MINUTE, @locCurrentDate )
															)
																SET @locShouldInsertRecord = 1
															ELSE
																SET @locShouldInsertRecord = 0
														END -- IF

													-- Время выполнения рейса раньше текущего,
													-- поэтому в любом случае
													-- запись должна быть добавлена
													ELSE
														SET @locShouldInsertRecord = 1
												END -- IF

											-- Время выполнения рейса позже текущего,
											-- то есть событие ещё не могло произойти,
											-- поэтому запись не может быть добавлена
											ELSE
												SET @locShouldInsertRecord = 0
										END -- IF

									-- Рейс с заданным идентификатором неактивен,
									-- поэтому запись не может быть добавлена
									ELSE
										SET @locShouldInsertRecord = 0
								END -- IF

							-- Автобус с заданным идентификатором
							-- неактивен и\или неисправен,
							-- поэтому запись не может быть добавлена
							ELSE
								SET @locShouldInsertRecord = 0
						END -- IF

					-- Водитель с заданным идентификатором неактивен,
					-- поэтому запись не может быть добавлена
					ELSE
						SET @locShouldInsertRecord = 0
				END -- IF

			-- Дата не является текущей на момент добавления новой записи,
			-- поэтому условия не влияют и запись надо добавить
			ELSE
				SET @locShouldInsertRecord = 1
		END -- IF

	-- День недели выполненнго рейса не соответствует дню недели по расписанию,
	-- поэтому запись не может быть добавлена
	ELSE
		SET @locShouldInsertRecord = 0

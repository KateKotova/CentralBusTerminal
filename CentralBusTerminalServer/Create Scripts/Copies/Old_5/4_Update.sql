-- Процедура изменения строки в таблице водителей
-- Результат: изменена ли заданная строка в таблицу Drivers:
--   0 - да
--   1 - нет, из-за пустоты таблицы
--   2 - нет, из-за несоответствия признака существования ожидаемому
--   4 - нет, из-за несоответствия        кода              типу
--   3 - нет, из-за несоответствия нового кода              типу
--   5 - нет, из-за несоответствия новой  фамилии           типу
--   6 - нет, из-за несоответствия нового имени             типу
--   7 - нет, из-за несоответствия нового отчества          типу
--   8 - нет, из-за несоответствия новых  паспортных данных типу
--   9 - нет, из-за несоответствия новой  даты рождения     типу
--  10 - нет, из-за несоответствия нового стажа             типу
CREATE PROCEDURE SP_UpdateDriver
(
	@parCode              T_NullableLongString OUTPUT,
	@parNewCode           T_NullableLongString OUTPUT,
	@parNewSurname        T_NullableLongString OUTPUT,
	@parNewFirstName      T_NullableLongString OUTPUT,
	@parNewPatronymicName T_NullableLongString OUTPUT,
	@parNewPassportData   T_NullableLongString OUTPUT,
	@parNewDay            T_NullableLongString OUTPUT,
	@parNewMonth          T_NullableLongString OUTPUT,
	@parNewYear           T_NullableLongString OUTPUT,
	@parNewServiceLength  T_NullableLongString OUTPUT,
	@parMessage           T_NullableHugeString OUTPUT
)
AS
	-- Возвращаемое процедурой значение
	DECLARE @locReturnValue int

	-- Проверка непустоты таблицы
	EXEC @locReturnValue = SP_CheckTableEmptiness
		'Drivers',
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN 1

	-- Проверка соответствия старого кода водителя
	-- первичному ключу таблицы водителей
	EXEC @locReturnValue = SP_CheckDriversPrimaryKeyConformity
		@parCode    OUTPUT,
		TRUE,
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Определение текущих паспортных данных
	DECLARE @locPassportData T_PassportData
	SET @locPassportData = 
	(
		SELECT PassportData
			FROM Drivers
			WHERE Code = @parCode
	) -- SET

	DECLARE
		-- Новая дата рождения водителя
		@locNewBirthDay varchar(10),
		-- Cообщение строки таблицы
		@locMessage     T_NullableHugeString

-- Проверка соответствия строки водителю таблицы водителей
	EXEC @locReturnValue  = SP_CheckDriversRowConformity
		@parNewCode           OUTPUT,
		@parCode,
		@parNewSurname        OUTPUT,
		@parNewFirstName      OUTPUT,
		@parNewPatronymicName OUTPUT,
		@parNewPassportData   OUTPUT,
		@locPassportData,
		@parNewDay            OUTPUT,
		@parNewMonth          OUTPUT,
		@parNewYear           OUTPUT,
		@locNewBirthDay       OUTPUT,
		@parNewServiceLength  OUTPUT,
		FALSE,
		@locMessage           OUTPUT
	IF LEN(@locMessage) <> 0
		SET @parMessage = dbo.FN_UnfinishedMessage(@parMessage) + @locMessage
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Изменение строки в таблице водителей
	UPDATE Drivers
		SET
			Code           = @parNewCode,
			Surname        = @parNewSurname,
			FirstName      = @parNewFirstName,
			PatronymicName = @parNewPatronymicName,
			PassportData   = @parNewPassportData,
			BirthDay       = @locNewBirthDay,
			ServiceLength  = @parNewServiceLength
		WHERE Code = @parCode
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура изменения строки в таблице автобусов
-- Результат: изменена ли заданная строка в таблицу Buses:
--   0 - да
--   1 - нет, из-за пустоты таблицы
--   2 - нет, из-за несоответствия признака существования ожидаемому
--  12 - нет, из-за несоответствия        автомобильного номера        типу
--  11 - нет, из-за несоответствия нового автомобильного номера        типу
--  13 - нет, из-за несоответствия новой  категории                    типу
--  14 - нет, из-за несоответствия нового количества пассажирских мест типу
--  15 - нет, из-за несоответствия нового года начала эксплуатации     типу
--  16 - нет, из-за несоответствия нового исправности                  типу
CREATE PROCEDURE SP_UpdateBus
(
	@parCarCode           T_NullableLongString OUTPUT,
	@parNewCarCode        T_NullableLongString OUTPUT,
	@parNewCategory       T_NullableLongString OUTPUT,
	@parNewSeatsQuantity  T_NullableLongString OUTPUT,
	@parNewUsageStartYear T_NullableLongString OUTPUT,
	@parNewSanityState    T_NullableLongString OUTPUT,
	@parMessage           T_NullableHugeString OUTPUT
)
AS
	-- Возвращаемое процедурой значение
	DECLARE @locReturnValue int

	-- Проверка непустоты таблицы
	EXEC @locReturnValue = SP_CheckTableEmptiness
		'Buses',
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN 1

	-- Проверка соответствия старого автомобльного номера автобуса
	-- первичному ключу таблицы автобусов
	EXEC @locReturnValue = SP_CheckBusesPrimaryKeyConformity
		@parCarCode OUTPUT,
		TRUE,
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Cообщение строки таблицы
	DECLARE @locMessage T_NullableHugeString

	-- Проверка соответствия строки автобусу таблицы автобусов
	EXEC @locReturnValue = SP_CheckBusesRowConformity
		@parNewCarCode        OUTPUT,
		@parCarCode,
		@parNewCategory       OUTPUT,
		@parNewSeatsQuantity  OUTPUT,
		@parNewUsageStartYear OUTPUT,
		@parNewSanityState    OUTPUT,
		FALSE,
		@locMessage           OUTPUT
	IF LEN(@locMessage) <> 0
		SET @parMessage = dbo.FN_UnfinishedMessage(@parMessage) + @locMessage
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Изменение строки в таблице автобусов
	UPDATE Buses
		SET
			CarCode        = @parNewCarCode,
			Category       = @parNewCategory, 
			SeatsQuantity  = @parNewSeatsQuantity,
			UsageStartYear = @parNewUsageStartYear,
			SanityState    = @parNewSanityState
		WHERE CarCode = @parCarCode
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура изменения строки в таблице направлений
-- Результат: изменена ли заданная строка в таблицу Directions:
--   0 - да
--   1 - нет, из-за пустоты таблицы
--   2 - нет, из-за несоответствия признака существования ожидаемому
--  18 - нет, из-за несоответствия        кода                       типу
--  17 - нет, из-за несоответствия нового кода                       типу
--  19 - нет, из-за несоответствия нового названия                   типу
--  20 - нет, из-за несоответствия новых  расходов газели            типу
--  21 - нет, из-за несоответствия новых  расходов жёсткой категории типу
--  22 - нет, из-за несоответствия новых  расходов мягкой  категории типу
CREATE PROCEDURE SP_UpdateDirection
(
	@parCode                         T_NullableLongString OUTPUT,
	@parNewCode                      T_NullableLongString OUTPUT,
	@parNewTitle                     T_NullableLongString OUTPUT,
	@parNewGazelleCategoryBusCost1Km T_NullableLongString OUTPUT,
	@parNewHardCategoryBusCost1Km    T_NullableLongString OUTPUT,
	@parNewSoftCategoryBusCost1Km    T_NullableLongString OUTPUT,
	@parMessage                      T_NullableHugeString OUTPUT
)
AS
	-- Возвращаемое процедурой значение
	DECLARE @locReturnValue int

	-- Проверка непустоты таблицы
	EXEC @locReturnValue = SP_CheckTableEmptiness
		'Directions',
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN 1

	-- Проверка соответствия старого кода направления
	-- первичному ключу таблицы направлений
	EXEC @locReturnValue = SP_CheckDirectionsPrimaryKeyConformity
		@parCode    OUTPUT,
		TRUE,
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Cообщение строки таблицы
	DECLARE @locMessage T_NullableHugeString

	-- Проверка соответствия строки направлению таблицы направлений
	EXEC @locReturnValue = SP_CheckDirectionsRowConformity
		@parNewCode                      OUTPUT,
		@parCode,
		@parNewTitle                     OUTPUT,
		@parNewGazelleCategoryBusCost1Km OUTPUT,
		@parNewHardCategoryBusCost1Km    OUTPUT,
		@parNewSoftCategoryBusCost1Km    OUTPUT,
		FALSE,
		@locMessage                      OUTPUT
	IF LEN(@locMessage) <> 0
		SET @parMessage = dbo.FN_UnfinishedMessage(@parMessage) + @locMessage
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Изменение строки в таблице направлений
	UPDATE Directions
		SET
			Code                      = @parNewCode,
			Title                     = @parNewTitle,
			GazelleCategoryBusCost1Km = @parNewGazelleCategoryBusCost1Km,
			HardCategoryBusCost1Km    = @parNewHardCategoryBusCost1Km,
			SoftCategoryBusCost1Km    = @parNewSoftCategoryBusCost1Km
		WHERE Code = @parCode
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура изменения строки в таблице маршрутов
-- Результат: изменена ли заданная строка в таблицу Paths:
--   0 - да
--   1 - нет, из-за пустоты таблицы
--   2 - нет, из-за несоответствия признака существования ожидаемому
--  24 - нет, из-за несоответствия        кода                         типу
--  23 - нет, из-за несоответствия нового кода                         типу
--  25 - нет, из-за несоответствия нового названия                     типу
--  17 - нет, из-за несоответствия нового кода направления             типу
--  26 - нет, из-за несоответствия новой  дальности                    типу
--  27 - нет, из-за несоответствия нового номера платформы             типу
--  28 - нет, из-за несоответствия новой  цены билета на газель        типу
--  29 - нет, из-за несоответствия новой  цены билета
--                                 на автобус жёсткой категории типу
--  30 - нет, из-за несоответствия новой  цены билета
--                                 на автобус мягкой категории  типу
--  31 - нет, из-за несоответствия новой  стоимости провоза багажа     типу
CREATE PROCEDURE SP_UpdatePath
(
	@parCode                            T_NullableLongString OUTPUT,
	@parNewCode                         T_NullableLongString OUTPUT,
	@parNewTitle                        T_NullableLongString OUTPUT,
	@parNewDirectionCode                T_NullableLongString OUTPUT,
	@parNewRangeKind                    T_NullableLongString OUTPUT,
	@parNewPlatformNumber               T_NullableLongString OUTPUT,
	@parNewGazelleCategoryBusTicketCost T_NullableLongString OUTPUT,
	@parNewHardCategoryBusTicketCost    T_NullableLongString OUTPUT,
	@parNewSoftCategoryBusTicketCost    T_NullableLongString OUTPUT,
	@parNewSeatLuggageTransportCost     T_NullableLongString OUTPUT,
	@parMessage                         T_NullableHugeString OUTPUT,
	@parForeignDetails                  T_NullableLongString OUTPUT
)
AS
	SET @parForeignDetails = ''
	-- Возвращаемое процедурой значение
	DECLARE @locReturnValue int

	-- Проверка непустоты таблицы
	EXEC @locReturnValue = SP_CheckTableEmptiness
		'Paths',
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN 1

	-- Проверкa соответствия старого кода маршрута
	-- первичному ключу таблицы маршрутов
	EXEC @locReturnValue = SP_CheckPathsPrimaryKeyConformity
		@parCode    OUTPUT,
		TRUE,
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Cообщение строки таблицы
	DECLARE @locMessage T_NullableHugeString

	-- Проверка соответствия строки маршруту таблицы маршрутов
	EXEC @locReturnValue = SP_CheckPathsRowConformity
		@parNewCode                         OUTPUT,
		@parCode,
		@parNewTitle                        OUTPUT,
		@parNewDirectionCode                OUTPUT,
		@parNewRangeKind                    OUTPUT,
		@parNewPlatformNumber               OUTPUT,
		@parNewGazelleCategoryBusTicketCost OUTPUT,
		@parNewHardCategoryBusTicketCost    OUTPUT,
		@parNewSoftCategoryBusTicketCost    OUTPUT,
		@parNewSeatLuggageTransportCost     OUTPUT,
		FALSE,
		@locMessage                         OUTPUT
	IF LEN(@locMessage) <> 0
		SET @parMessage = dbo.FN_UnfinishedMessage(@parMessage) + @locMessage
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Изменение строки в таблице маршрутов
	UPDATE Paths
		SET
			Code                         = @parNewCode,
			Title                        = @parNewTitle,
			DirectionCode                = @parNewDirectionCode,
			RangeKind                    = @parNewRangeKind,
			PlatformNumber               = @parNewPlatformNumber,
			GazelleCategoryBusTicketCost = @parNewGazelleCategoryBusTicketCost,
			HardCategoryBusTicketCost    = @parNewHardCategoryBusTicketCost,
			SoftCategoryBusTicketCost    = @parNewSoftCategoryBusTicketCost,
			SeatLuggageTransportCost     = @parNewSeatLuggageTransportCost
		WHERE Code = @parCode
	-- Внешние атрибуты новой строки таблицы Paths
	SET @parForeignDetails = dbo.FN_PathForeignAttributesDetails(@parNewCode)
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура изменения строки в таблице остановок
-- Результат: изменена ли заданная строка в таблицу Stops:
--   0 - да
--   1 - нет, из-за пустоты таблицы
--   2 - нет, из-за несоответствия признака существования ожидаемому
--  33 - нет, из-за несоответствия        названия                 типу
--  24 - нет, из-за несоответствия        кода маршрута            типу
--  32 - нет, из-за несоответствия нового названия                 типу
--  23 - нет, из-за несоответствия нового кода маршрута            типу
--  34 - нет, из-за несоответствия нового номера                   типу
--  35 - нет, из-за несоответствия нового расстояния до предыдущей типу
CREATE PROCEDURE SP_UpdateStop
(
	@parTitle                    T_NullableLongString OUTPUT,
	@parPathCode                 T_NullableLongString OUTPUT,
	@parNewTitle                 T_NullableLongString OUTPUT,
	@parNewPathCode              T_NullableLongString OUTPUT,
	@parNewNumber                T_NullableLongString OUTPUT,
	@parNewAfterPreviousDistance T_NullableLongString OUTPUT,
	@parMessage                  T_NullableHugeString OUTPUT,
	@parForeignDetails           T_NullableLongString OUTPUT
)
AS
	SET @parForeignDetails = ''
	-- Возвращаемое процедурой значение
	DECLARE @locReturnValue int

	-- Проверка непустоты таблицы
	EXEC @locReturnValue = SP_CheckTableEmptiness
		'Stops',
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN 1

	-- Проверка соответствия старого названия и старого кода маршрута остановки
	-- первичному ключу таблицы остановок
	EXEC @locReturnValue = SP_CheckStopsPrimaryKeyConformity
		@parTitle    OUTPUT,
		@parPathCode OUTPUT,
		TRUE,
		@parMessage  OUTPUT
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Cообщение строки таблицы
	DECLARE @locMessage T_NullableHugeString

	-- Проверка соответствия строки остановке таблицы остановок
	EXEC @locReturnValue = SP_CheckStopsRowConformity
		@parNewTitle                 OUTPUT,
		@parTitle,
		@parNewPathCode              OUTPUT,
		@parPathCode,
		@parNewNumber                OUTPUT,
		@parNewAfterPreviousDistance OUTPUT,
		FALSE,
		@locMessage                  OUTPUT
	IF LEN(@locMessage) <> 0
		SET @parMessage = dbo.FN_UnfinishedMessage(@parMessage) + @locMessage
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Изменение строки в таблице остановок
	UPDATE Stops
		SET
			Title                 = @parNewTitle,
			PathCode              = @parNewPathCode,
			Number                = @parNewNumber,
			AfterPreviousDistance = @parNewAfterPreviousDistance
		WHERE
			Title     = @parTitle AND
			PathCode  = @parPathCode
	-- Внешние атрибуты новой строки таблицы Stops
	SET @parForeignDetails =
		dbo.FN_StopForeignAttributesDetails(@parNewPathCode)
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура изменения строки в таблице расписания рейсов
-- Результат: изменена ли заданная строка в таблицу RunsTimetable:
--   0 - да
--   1 - нет, из-за пустоты таблицы
--   2 - нет, из-за несоответствия признака существования ожидаемому
--  37 - нет, из-за несоответствия        кода               типу
--  36 - нет, из-за несоответствия нового кода               типу
--  23 - нет, из-за несоответствия нового кода маршрута      типу
--  13 - нет, из-за несоответствия новой  категории автобуса типу
--  38 - нет, из-за несоответствия нового дня недели         типу
--  39 - нет, из-за несоответствия нового дня времени        типу
CREATE PROCEDURE SP_UpdateRunTimetable
(
	@parCode           T_NullableLongString OUTPUT,
	@parNewCode        T_NullableLongString OUTPUT,
	@parNewPathCode    T_NullableLongString OUTPUT,
	@parNewBusCategory T_NullableLongString OUTPUT,
	@parNewWeekday     T_NullableLongString OUTPUT,
	@parNewHour        T_NullableLongString OUTPUT,
	@parNewMinute      T_NullableLongString OUTPUT,
	@parMessage        T_NullableHugeString OUTPUT,
	@parForeignDetails T_NullableLongString OUTPUT
)
AS
	SET @parForeignDetails = ''
	-- Возвращаемое процедурой значение
	DECLARE @locReturnValue int

	-- Проверка непустоты таблицы
	EXEC @locReturnValue = SP_CheckTableEmptiness
		'RunsTimetable',
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN 1

	-- Проверка соответствия старого кода расписания рейса
	-- первичному ключу таблицы расписания рейсов
	EXEC @locReturnValue = SP_CheckRunsTimetablePrimaryKeyConformity
		@parCode    OUTPUT,
		TRUE,
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	DECLARE
		-- Новое временя расписания рейса
		@locNewTime varchar(5),
		-- Cообщение строки таблицы
		@locMessage T_NullableHugeString

	-- Проверка соответствия строки расписанию рейса таблицы расписаний рейсов
	EXEC @locReturnValue = SP_CheckRunsTimetableRowConformity
		@parNewCode        OUTPUT,
		@parCode,
		@parNewPathCode    OUTPUT,
		@parNewBusCategory OUTPUT,
		@parNewWeekday     OUTPUT,
		@parNewHour        OUTPUT,
		@parNewMinute      OUTPUT,
		@locNewTime        OUTPUT,
		FALSE,
		@locMessage        OUTPUT
	IF LEN(@locMessage) <> 0
		SET @parMessage = dbo.FN_UnfinishedMessage(@parMessage) + @locMessage
	IF @locReturnValue <> 0
		RETURN @locReturnValue

		-- Изменение строки в таблице расписаний рейсов
	UPDATE RunsTimetable
		SET
			Code        = @parNewCode,
			PathCode    = @parNewPathCode,
			BusCategory = @parNewBusCategory,
			[Weekday]   = @parNewWeekday,
			[Time]      = @locNewTime
		WHERE Code = @parCode
	-- Внешние атрибуты новой строки таблицы RunsTimetable
	SET @parForeignDetails =
		dbo.FN_RunTimetableForeignAttributesDetails(@parNewCode)
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура изменения строки в таблице выполнения рейсов
-- Результат: изменена ли заданная строка в таблицу RunsExecution:
--   0 - да
--   1 - нет, из-за пустоты таблицы
--   2 - нет, из-за несоответствия признака существования ожидаемому
--  41 - нет, из-за несоответствия        даты                           типу
--  37 - нет, из-за несоответствия        кода                           типу
--  40 - нет, из-за несоответствия новой  даты                           типу
--  36 - нет, из-за несоответствия нового кода                           типу
--  11 - нет, из-за несоответствия нового автомобильного номера автобуса типу
--   3 - нет, из-за несоответствия нового кода водителя                  типу
CREATE PROCEDURE SP_UpdateRunExecution
(
	@parDay            T_NullableLongString OUTPUT,
	@parMonth          T_NullableLongString OUTPUT,
	@parYear           T_NullableLongString OUTPUT,
	@parCode           T_NullableLongString OUTPUT,
	@parNewDay         T_NullableLongString OUTPUT,
	@parNewMonth       T_NullableLongString OUTPUT,
	@parNewYear        T_NullableLongString OUTPUT,
	@parNewCode        T_NullableLongString OUTPUT,
	@parNewBusCarCode  T_NullableLongString OUTPUT,
	@parNewDriverCode  T_NullableLongString OUTPUT,
	@parMessage        T_NullableHugeString OUTPUT,
	@parForeignDetails T_NullableLongString OUTPUT
)
AS
	SET @parForeignDetails = ''
	-- Возвращаемое процедурой значение
	DECLARE @locReturnValue int

	-- Проверка непустоты таблицы
	EXEC @locReturnValue = SP_CheckTableEmptiness
		'RunsExecution',
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN 1

	-- Старая дата выполнения рейса
	DECLARE @locDate varchar(10)

	-- Проверка соответствия старой даты и старого кода выполнения рейса
	-- первичному ключу таблицы выполнения рейсов
	EXEC @locReturnValue = SP_CheckRunsExecutionPrimaryKeyConformity
		@parDay     OUTPUT,
		@parMonth   OUTPUT,
		@parYear    OUTPUT,
		@locDate    OUTPUT,
		@parCode    OUTPUT,
		TRUE,
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	DECLARE
		-- Новая дата выполнения рейса
		@locNewDate varchar(10),
		-- Cообщение строки таблицы
		@locMessage T_NullableHugeString

	-- Проверка соответствия строки выполнению рейса таблицы выполнений рейсов
	EXEC @locReturnValue =  SP_CheckRunsExecutionRowConformity
		@parNewDay        OUTPUT,
		@parNewMonth      OUTPUT,
		@parNewYear       OUTPUT,
		@locNewDate       OUTPUT,
		@locDate,
		@parNewCode       OUTPUT,
		@parCode,
		@parNewBusCarCode OUTPUT,
		@parNewDriverCode OUTPUT,
		FALSE,
		@locMessage       OUTPUT
	IF LEN(@locMessage) <> 0
		SET @parMessage = dbo.FN_UnfinishedMessage(@parMessage) + @locMessage
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Изменение строки в таблице выполнения рейсов
	UPDATE RunsExecution
		SET
			[Date]     = @locNewDate,
			Code       = @parNewCode,
			BusCarCode = @parNewBusCarCode,
			DriverCode = @parNewDriverCode
		WHERE
			[Date] = @locDate AND
			Code   = @parCode
	-- Внешние атрибуты новой строки таблицы RunsExecution
	SET @parForeignDetails =
		dbo.FN_RunExecutionForeignAttributesDetails(@locNewDate, @parNewCode)
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура изменения строки в таблице продажи билетов
-- Результат: изменена ли заданная строка в таблицу TicketsSale:
--   0 - да
--   1 - нет, из-за пустоты таблицы
--   2 - нет, из-за несоответствия признака существования ожидаемому
--  41 - нет, из-за несоответствия        даты                    типу
--  37 - нет, из-за несоответствия        кода рейса              типу
--  43 - нет, из-за несоответствия        номера                  типу
--  40 - нет, из-за несоответствия новой  даты                    типу
--  36 - нет, из-за несоответствия нового кода рейса              типу
--  42 - нет, из-за несоответствия нового номера                  типу
--  44 - нет, из-за несоответствия нового признака продажи        типу
--  45 - нет, из-за несоответствия нового признака наличия багажа типу
CREATE PROCEDURE SP_UpdateTicketSale
(
	@parDay                T_NullableLongString OUTPUT,
	@parMonth              T_NullableLongString OUTPUT,
	@parYear               T_NullableLongString OUTPUT,
	@parRunCode            T_NullableLongString OUTPUT,
	@parNumber             T_NullableLongString OUTPUT,
	@parNewDay             T_NullableLongString OUTPUT,
	@parNewMonth           T_NullableLongString OUTPUT,
	@parNewYear            T_NullableLongString OUTPUT,
	@parNewRunCode         T_NullableLongString OUTPUT,
	@parNewNumber          T_NullableLongString OUTPUT,
	@parNewSaleState       T_NullableLongString OUTPUT,
	@parNewLuggagePresence T_NullableLongString OUTPUT,
	@parMessage            T_NullableHugeString OUTPUT,
	@parForeignDetails     T_NullableLongString OUTPUT
)
AS
	SET @parForeignDetails = ''
	-- Возвращаемое процедурой значение
	DECLARE @locReturnValue int

	-- Проверка непустоты таблицы
	EXEC @locReturnValue = SP_CheckTableEmptiness
		'TicketsSale',
		@parMessage OUTPUT
	IF @locReturnValue <> 0
		RETURN 1

	-- Старая дата продажи билета
	DECLARE @locDate varchar(10)

	-- Проверка соответствия старой даты, старого кода рейса и старого номера
	-- продажи блета первичному ключу таблицы продажи блетов
	EXEC @locReturnValue = SP_CheckTicketsSalePrimaryKeyConformity
		@parDay       OUTPUT,
		@parMonth     OUTPUT,
		@parYear      OUTPUT,
		@locDate      OUTPUT,
		@parRunCode   OUTPUT,
		@parNumber    OUTPUT,
		TRUE,
		@parMessage   OUTPUT
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	DECLARE
		-- Новая дата продажи билета
		@locNewDate varchar(10),
		-- Cообщение строки таблицы
		@locMessage T_NullableHugeString

	-- Проверка соответствия строки продаже билета таблицы продажи билетов
	EXEC @locReturnValue = SP_CheckTicketsSaleRowConformity
		@parNewDay             OUTPUT,
		@parNewMonth           OUTPUT,
		@parNewYear            OUTPUT,
		@locNewDate            OUTPUT,
		@locDate,
		@parNewRunCode         OUTPUT,
		@parRunCode,
		@parNewNumber          OUTPUT,
		@parNumber,
		@parNewSaleState       OUTPUT,
		@parNewLuggagePresence OUTPUT,
		FALSE,
		@locMessage            OUTPUT
	IF LEN(@locMessage) <> 0
		SET @parMessage = dbo.FN_UnfinishedMessage(@parMessage) + @locMessage
	IF @locReturnValue <> 0
		RETURN @locReturnValue

	-- Изменение строки в таблице продажи билетов
	UPDATE TicketsSale
		SET
			[Date]          = @locNewDate,
			RunCode         = @parNewRunCode,
			Number          = @parNewNumber,
			SaleState       = @parNewSaleState,
			LuggagePresence = @parNewLuggagePresence
		WHERE
			[Date]  = @locDate    AND
			RunCode = @parRunCode AND
			Number  = @parNumber
	-- Внешние атрибуты новой строки таблицы TicketsSale
	SET @parForeignDetails =
		dbo.FN_TicketSaleForeignAttributesDetails(@parNewRunCode)
	RETURN 0
GO
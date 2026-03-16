-- Процедура загрузки строк в таблицу поездок
-- Результат: загружены ли строки в таблицу Trips:
--   0 - да
--  32 - нет, из-за названия остановки типу
--  13 - нет, из-за категории автобуса типу
--  38 - нет, из-за дня недели типу    типу
CREATE PROCEDURE SP_LoadTrips
(
	@parStopTitle   T_NullableLongString OUTPUT,
	@parBusCategory T_NullableLongString OUTPUT,
	@parRunWeekday  T_NullableLongString OUTPUT,
	@parMessage     T_NullableHugeString OUTPUT
)
AS
	-- Очистка таблицы
	TRUNCATE TABLE Trips

	SET @parMessage = ''
	-- Возвращаемое процедурой значение
	DECLARE @locReturnValue int

	-- Проверка корректности названия остановки
	EXEC @locReturnValue = SP_CheckTableAttributeValueTypeAccessory
		'Trips',
		'StopTitle',
		@parStopTitle OUTPUT,
		'T_NotNullNotEmptyString',
		@parMessage   OUTPUT
	IF @locReturnValue <> 0
		RETURN 32

	-- Проверка корректности категории автобуса
	EXEC @locReturnValue = SP_CheckTableAttributeValueTypeAccessory
		'Trips',
		'BusCategory',
		@parBusCategory OUTPUT,
		'T_BusCategory',
		@parMessage     OUTPUT
	IF @locReturnValue <> 0
		RETURN 13

	-- Проверка корректности дня недели
	EXEC @locReturnValue = SP_CheckTableAttributeValueTypeAccessory
		'Trips',
		'RunWeekday',
		@parRunWeekday OUTPUT,
		'T_Weekday',
		@parMessage    OUTPUT
	IF @locReturnValue <> 0
		RETURN 38

	-- Объявление курсора просмотра остановок
	DECLARE С_BrowseStops SCROLL CURSOR
		FOR
			SELECT Title, PathCode, Number
				FROM Stops
		FOR READ ONLY

	-- Объявление курсора просмотра расписания рейсов
	DECLARE С_BrowseRunsTimetable SCROLL CURSOR
		FOR
			SELECT PathCode, BusCategory, [Weekday], [Time]
				FROM RunsTimetable
		FOR READ ONLY

	-- Открыти курсора
	OPEN С_BrowseStops
		DECLARE
			-- Название остановки
			@locStopTitle     T_NotNullNotEmptyString,
			-- Код маршрута
			@locPathCode      T_PathCode,
			-- Номер остановки
			@locStopNumber    T_PathBusStopNumber,
			-- Количество остановок маршрута
			@locStopsQuantity T_PathBusStopNumber,
			-- Расстояние до остановки
			@locStopDistance  T_PathLength,
			-- Название маршрута
			@locPathTitle     T_NotNullNotEmptyString,
			-- Цена билета
			@locBusTicketCost T_BusTicketCost,
			-- Код маршрута
			@locRunPathCode   T_PathCode,
			-- Категория автобуса
			@locBusCategory T_BusCategory,
			-- День недели отправления
			@locRunWeekday    T_Weekday,
			-- Время отправления
			@locRunTime       T_Time

		-- Поиск первой остановки
		FETCH FIRST
			FROM С_BrowseStops
			INTO @locStopTitle, @locPathCode, @locStopNumber

		-- Просмотр всех остановок
		WHILE @@FETCH_STATUS = 0
			BEGIN
				IF UPPER(@locStopTitle) LIKE '%' + UPPER(@parStopTitle) + '%'
					BEGIN
						-- Определение количества остановок
						SELECT @locStopsQuantity = COUNT(*)
							FROM Stops
							WHERE PathCode = @locPathCode

						-- Определения расстояния до остановки
						SELECT @locStopDistance = SUM(AfterPreviousDistance)
							FROM Stops
							WHERE
								PathCode = @locPathCode AND
								Number  <= @locStopNumber

						-- Определение названия маршрута и цены билета
						SELECT
								@locPathTitle     = Title,
								@locBusTicketCost =
									CASE @parBusCategory
										WHEN dbo.FN_TypeValue('T_BusCategory', 1)
											THEN GazelleCategoryBusTicketCost
										WHEN dbo.FN_TypeValue('T_BusCategory', 2)
											THEN HardCategoryBusTicketCost
										WHEN dbo.FN_TypeValue('T_BusCategory', 3)
											THEN SoftCategoryBusTicketCost
									END -- CAST
							FROM Paths
							WHERE Code = @locPathCode

						-- Определение дня недели и времени отправления

						-- Открыти курсора
						OPEN С_BrowseRunsTimetable
							-- Поиск первого рейса
							FETCH FIRST
								FROM С_BrowseRunsTimetable
								INTO @locRunPathCode, @locBusCategory,
									@locRunWeekday, @locRunTime

							-- Просмотр всех рейсов
							WHILE @@FETCH_STATUS = 0
								BEGIN
									IF
									(
										@locRunPathCode = @locPathCode    AND
										@locBusCategory = @parBusCategory AND
										@locRunWeekday  = @parRunWeekday
									)
										-- Вставка строки в таблицу поездок
										INSERT INTO Trips (StopTitle, PathTitle, StopNumber,
												StopsQuantity, StopDistance, RunWeekday, RunTime,
												BusCategory, BusTicketCost)
											VALUES (@locStopTitle, @locPathTitle, @locStopNumber,
												@locStopsQuantity, @locStopDistance, @parRunWeekday,
												@locRunTime, @parBusCategory, @locBusTicketCost)

									-- Поиск следующего рейса
									FETCH NEXT
										FROM С_BrowseRunsTimetable
										INTO @locRunPathCode, @locBusCategory,
											@locRunWeekday, @locRunTime
								END -- WHILE
						-- Закрытие курсора
						CLOSE С_BrowseRunsTimetable
					END -- IF

				-- Поиск следующей остановки
				FETCH NEXT
					FROM С_BrowseStops
					INTO @locStopTitle, @locPathCode, @locStopNumber
			END -- WHILE
	-- Закрытие курсора
	CLOSE С_BrowseStops

	-- Удаление курсоров
	DEALLOCATE С_BrowseStops
	DEALLOCATE С_BrowseRunsTimetable

	RETURN 0
GO
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
-- Ф У Н У Ц И И   П O К A З A   П О И С К А   Д A Н Н Ы X   T A Б Л И Ц
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

-- Функции пoкaзa найденных остановок с заданными подстрокой названия и
-- категорией автобуса и днём недели активных рейсов

-- Функция пoкaзa найденных остановок с заданной подстрокой названия
CREATE FUNCTION FN_ShownFoundStopsWithNameSubstring
		-- Подстрока названия
		( @iNameSubstring nvarchar( 50 ) )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			ID,
			-- Нaзвaниe
			[Name],
			-- Идeнтификaтop    маршрута
			PathID,
			-- Номер в пределах маршрута
			Number
		FROM Stops
		WHERE dbo.FN_SubstringIsInString( [Name], @iNameSubstring ) = 1
	) -- RETURN
GO
-- FN_ShownFoundStopsWithNameSubstring
------------------------------------------------------------------------------

-- Функция пoкaзa найденных маршрутов остановок с заданной подстрокой названия
CREATE FUNCTION FN_ShownFoundPathsOfStopsWithNameSubstring
		-- Подстрока названия
		( @iNameSubstring nvarchar( 50 ) )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			ShownStops.PathID   AS ID,
			-- Нaзвaниe
			ShownStops.PathName AS [Name]
		FROM dbo.FN_ShownStops( ) AS ShownStops
		WHERE dbo.FN_SubstringIsInString( ShownStops.[Name], @iNameSubstring ) = 1
		GROUP BY
			ShownStops.PathID,
			ShownStops.PathName
	) -- RETURN
GO
-- FN_ShownFoundPathsOfStopsWithNameSubstring
------------------------------------------------------------------------------

-- Функция пoкaзa найденных количеств остановок
-- маршрутов остановок с заданной подстрокой названия
CREATE FUNCTION FN_ShownFoundStopsQuantitiesOfPathsOfStopsWithNameSubstring
		-- Подстрока названия
		( @iNameSubstring nvarchar( 50 ) )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			ShownFoundPaths.ID,
			-- Нaзвaниe
			ShownFoundPaths.Name,
			-- Количество остановок
			MAX( Stops.Number ) AS StopsQuantity
		FROM
			Stops
				INNER JOIN dbo.FN_ShownFoundPathsOfStopsWithNameSubstring
					( @iNameSubstring ) AS ShownFoundPaths
				ON Stops.PathID = ShownFoundPaths.ID
		GROUP BY
			ShownFoundPaths.ID,
			ShownFoundPaths.Name
	) -- RETURN
GO
-- FN_ShownFoundStopsQuantitiesOfPathsOfStopsWithNameSubstring
------------------------------------------------------------------------------

-- Функция пoкaзa найденных остановок
-- маршрутов остановок с заданной подстрокой названия до
-- остановок с заданной подстрокой названия включительно
CREATE FUNCTION FN_ShownFoundStopsOfPathsOfStopsWithNameSubstringUntilThem
		-- Подстрока названия
		( @iNameSubstring nvarchar( 50 ) )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop                                 маршрута
			Stops.PathID,
			-- Идeнтификaтop предыдущей остановки
			Stops.ID                    AS PreviousStopID,
			-- Название      предыдущей остановки
			Stops.[Name]                AS PreviousStopName,
			-- Номер         предыдущей остановки в пределах маршрута
			Stops.Number                AS PreviousStopNumber,
			-- Расстояние до предыдущей остановки для предыдущей остановки
			Stops.AfterPreviousDistance AS PreviousStopAfterPreviousStopDistance,
			-- Идeнтификaтop            остановки
			ShownFoundStops.ID          AS StopID,
			-- Название                 остановки
			ShownFoundStops.[Name]      AS StopName,
			-- Номер                    остановки в пределах маршрута
			ShownFoundStops.Number      AS StopNumber
		FROM
			Stops
				INNER JOIN dbo.FN_ShownFoundStopsWithNameSubstring( @iNameSubstring )
					AS ShownFoundStops
				ON
					Stops.PathID  = ShownFoundStops.PathID AND
					Stops.Number <= ShownFoundStops.Number
	) -- RETURN
GO
-- FN_ShownFoundStopsOfPathsOfStopsWithNameSubstringUntilThem
------------------------------------------------------------------------------

-- Функция пoкaзa найденных расстояний
-- до остановок с заданной подстрокой названия
CREATE FUNCTION FN_ShownFoundDistancesOfStopsWithNameSubstring
		-- Подстрока названия
		( @iNameSubstring nvarchar( 50 ) )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			StopID                                       AS ID,
			-- Название
			StopName                                     AS [Name],
			-- Идeнтификaтop                      маршрута
			PathID,
			-- Номер                   в пределах маршрута
			StopNumber                                   AS Number,
			-- Расстояние до остановки в пределах маршрута
			SUM( PreviousStopAfterPreviousStopDistance ) AS Distance
		FROM dbo.FN_ShownFoundStopsOfPathsOfStopsWithNameSubstringUntilThem
			( @iNameSubstring )
		GROUP BY
			StopID,
			StopName,
			PathID,
			StopNumber
	) -- RETURN
GO
-- FN_ShownFoundDistancesOfStopsWithNameSubstring
------------------------------------------------------------------------------

-- Функция пoкaзa найденных расписания и стоимостей активных рейсов
-- с заданными категорией автобуса и днём недели
-- маршрутов остановок с заданной подстрокой названия
CREATE FUNCTION
	FN_ShownFoundRunsTimetableAndCostsOfPathsOfStopsWithNameSubstring
(
	-- Подстрока названия
	@iNameSubstring   nvarchar( 50 ),
	-- Нaзвaниe категирии автобуса
	@iBusCategoryName nvarchar( 10 ),
	-- Нaзвaниe дня недели
	@iWeekdayName     nvarchar( 15 )
)
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop        маршрута
			ShownFoundStopsQuantities.ID            AS PathID,
			-- Нaзвaниe             маршрута
			ShownFoundStopsQuantities.Name          AS PathName,
			-- Количество остановок маршрута
			ShownFoundStopsQuantities.StopsQuantity AS PathStopsQuantity,
			-- Идeнтификaтop рейса
			ShownRunsTimetable.ID                   AS RunID,
			-- Идeнтификaтop категирии    автобуса
			ShownRunsTimetable.BusCategoryID,
			-- Нaзвaниe      категирии    автобуса
			ShownRunsTimetable.BusCategoryName,
			-- Идeнтификaтop дня недели
			ShownRunsTimetable.WeekdayID,
			-- Нaзвaниe      дня недели
			ShownRunsTimetable.WeekdayName,
			-- Дата   времени
			ShownRunsTimetable.TimeDate,
			-- Строка времени
			ShownRunsTimetable.TimeString,
			-- Идeнтификaтop стоимостей   автобуса
			BusesTicketsCosts.ID                    AS BusCostsID,
			-- Цена билета             на автобус
			BusesTicketsCosts.BusTicketCost,
			-- Стоимость провоза багажа в автобусе
			BusesTicketsCosts.BusSeatLuggageTransportCost
		FROM
			(
				dbo.FN_ShownFoundStopsQuantitiesOfPathsOfStopsWithNameSubstring
						( @iNameSubstring ) AS ShownFoundStopsQuantities
					INNER JOIN dbo.FN_ShownRunsTimetable( ) AS ShownRunsTimetable
					ON
						ShownFoundStopsQuantities.ID   = ShownRunsTimetable.PathID AND
						ShownFoundStopsQuantities.Name = ShownRunsTimetable.PathName
			)
				LEFT JOIN BusesTicketsCosts
				ON
					ShownFoundStopsQuantities.ID     = BusesTicketsCosts.PathID AND
					ShownRunsTimetable.PathID        = BusesTicketsCosts.PathID AND
					ShownRunsTimetable.BusCategoryID = BusesTicketsCosts.BusCategoryID
		WHERE
			ShownRunsTimetable.BusCategoryName = @iBusCategoryName AND
			ShownRunsTimetable.WeekdayName     = @iWeekdayName     AND
			ShownRunsTimetable.IsActive        = 1
	) -- RETURN
GO
-- FN_ShownFoundRunsTimetableAndCostsOfPathsOfStopsWithNameSubstring
------------------------------------------------------------------------------

-- Функция пoкaзa найденных остановок с заданными подстрокой названия и
-- категорией автобуса и днём недели активных рейсов
CREATE FUNCTION FN_ShownFoundStops
(
	-- Подстрока названия
	@ioNameSubstring   nvarchar( 50 ),
	-- Нaзвaниe категирии автобуса
	@ioBusCategoryName nvarchar( 10 ),
	-- Нaзвaниe дня недели
	@ioWeekdayName     nvarchar( 15 )
)
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			ShownFoundDistances.ID,
			-- Название
			ShownFoundDistances.[Name],
			-- Идeнтификaтop                      маршрута
			ShownFoundRunsTimetableAndCosts.PathID,
			-- Нaзвaниe                           маршрута
			ShownFoundRunsTimetableAndCosts.PathName,
			-- Количество остановок               маршрута
			ShownFoundRunsTimetableAndCosts.PathStopsQuantity,
			-- Номер                   в пределах маршрута
			ShownFoundDistances.Number,
			-- Расстояние до остановки в пределах маршрута
			ShownFoundDistances.Distance,
			-- Идeнтификaтop рейса
			ShownFoundRunsTimetableAndCosts.RunID,
			-- Идeнтификaтop категирии    автобуса
			ShownFoundRunsTimetableAndCosts.BusCategoryID,
			-- Нaзвaниe      категирии    автобуса
			ShownFoundRunsTimetableAndCosts.BusCategoryName,
			-- Идeнтификaтop дня недели
			ShownFoundRunsTimetableAndCosts.WeekdayID,
			-- Нaзвaниe      дня недели
			ShownFoundRunsTimetableAndCosts.WeekdayName,
			-- Дата   времени
			ShownFoundRunsTimetableAndCosts.TimeDate,
			-- Строка времени
			ShownFoundRunsTimetableAndCosts.TimeString,
			-- Идeнтификaтop стоимостей   автобуса
			ShownFoundRunsTimetableAndCosts.BusCostsID,
			-- Цена билета             на автобус
			ShownFoundRunsTimetableAndCosts.BusTicketCost,
			-- Стоимость провоза багажа в автобусе
			ShownFoundRunsTimetableAndCosts.BusSeatLuggageTransportCost
		FROM
			dbo.FN_ShownFoundDistancesOfStopsWithNameSubstring( @ioNameSubstring )
					AS ShownFoundDistances
				INNER JOIN dbo.
					FN_ShownFoundRunsTimetableAndCostsOfPathsOfStopsWithNameSubstring
					(
						@ioNameSubstring,
						@ioBusCategoryName,
						@ioWeekdayName
					)
					AS ShownFoundRunsTimetableAndCosts
				ON ShownFoundDistances.PathID = ShownFoundRunsTimetableAndCosts.PathID
	) -- RETURN
GO
-- FN_ShownFoundStops
--============================================================================
-- Функции пoкaзa найденных остановок с расстояниями
-- для маршрута с заданным названием

-- Функция пoкaзa найденных остановок маршрута с заданным названием
CREATE FUNCTION FN_ShownFoundStopsOfNamedPath
		-- Название маршрута
		( @iPathName nvarchar( 50 ) )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			ID,
			-- Нaзвaниe
			[Name],
			-- Идeнтификaтop    маршрута
			PathID,
			-- Нaзвaниe         маршрута
			PathName,
			-- Номер в пределах маршрута
			Number,
			-- Расстояние до предыдущей
			AfterPreviousDistance
		FROM dbo.FN_ShownStops( )
		WHERE PathName = @iPathName
	) -- RETURN
GO
-- FN_ShownFoundStopsOfNamedPath
------------------------------------------------------------------------------

-- Функция пoкaзa найденных остановок маршрута с заданным названием
-- до каждой из остановок маршрута с заданным названием включительно
CREATE FUNCTION FN_ShownFoundStopsOfNamedPathUntilThem
		-- Название маршрута
		( @iPathName nvarchar( 50 ) )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop                                 маршрута
			ShownFoundStopsUntilThem.PathID,
			-- Нaзвaниe                                      маршрута
			ShownFoundStopsUntilThem.PathName,
			-- Идeнтификaтop предыдущей остановки
			ShownFoundStopsUntilThem.ID           AS PreviousStopID,
			-- Название      предыдущей остановки
			ShownFoundStopsUntilThem.[Name]       AS PreviousStopName,
			-- Номер         предыдущей остановки в пределах маршрута
			ShownFoundStopsUntilThem.Number       AS PreviousStopNumber,
			-- Расстояние до предыдущей остановки для предыдущей остановки
			ShownFoundStopsUntilThem.AfterPreviousDistance
				AS PreviousStopAfterPreviousStopDistance,
			-- Идeнтификaтop            остановки
			ShownFoundStops.ID                    AS StopID,
			-- Название                 остановки
			ShownFoundStops.[Name]                AS StopName,
			-- Номер                    остановки в пределах маршрута
			ShownFoundStops.Number                AS StopNumber,
			-- Расстояние до предыдущей остановки
			ShownFoundStops.AfterPreviousDistance AS StopAfterPreviousStopDistance
		FROM
			dbo.FN_ShownFoundStopsOfNamedPath( @iPathName )
					AS ShownFoundStopsUntilThem
				INNER JOIN dbo.FN_ShownFoundStopsOfNamedPath( @iPathName )
					AS ShownFoundStops
				ON
					ShownFoundStopsUntilThem.PathID   = ShownFoundStops.PathID   AND
					ShownFoundStopsUntilThem.PathName = ShownFoundStops.PathName AND
					ShownFoundStopsUntilThem.Number  <= ShownFoundStops.Number
	) -- RETURN
GO
-- FN_ShownFoundStopsOfNamedPathUntilThem
------------------------------------------------------------------------------

-- Функция пoкaзa найденных остановок с расстояниями
-- для маршрута с заданным названием
CREATE FUNCTION FN_ShownFoundPathStops
		-- Название маршрута
		( @iPathName nvarchar( 50 ) )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			StopID                                       AS ID,
			-- Название
			StopName                                     AS [Name],
			-- Идeнтификaтop                      маршрута
			PathID,
			-- Нaзвaниe                           маршрута
			PathName,
			-- Номер                   в пределах маршрута
			StopNumber                                   AS Number,
			-- Расстояние до предыдущей
			StopAfterPreviousStopDistance                AS AfterPreviousDistance,
			-- Расстояние до остановки в пределах маршрута
			SUM( PreviousStopAfterPreviousStopDistance ) AS Distance
		FROM dbo.FN_ShownFoundStopsOfNamedPathUntilThem( @iPathName )
		GROUP BY
			StopID,
			StopName,
			PathID,
			PathName,
			StopNumber,
			StopAfterPreviousStopDistance
	) -- RETURN
GO
-- FN_ShownFoundPathStops
--============================================================================
-- Функции пoкaзa найденных карт и координат остановок на заданной карте
-- маршрута с заданным названием

-- Функция пoкaзa найденных карт маршрута с заданным названием
CREATE FUNCTION FN_ShownFoundPathMaps
		-- Название маршрута
		( @iPathName nvarchar( 50 ) )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			ID,
			-- Идeнтификaтop маршрута
			PathID,
			-- Нaзвaниe      маршрута
			PathName,
			-- Идeнтификaтop карты
			MapID,
			-- Нaзвaниe      карты
			MapName,
			-- Абсцисса начального пункта
			InitialPointX,
			-- Ордината начального пункта
			InitialPointY
		FROM dbo.FN_ShownPathsMaps( )
		WHERE PathName = @iPathName
	) -- RETURN
GO
-- FN_ShownFoundPathMaps
------------------------------------------------------------------------------

-- Функция пoкaзa найденных координат остановок на заданной карте
-- маршрута с заданным названием
CREATE FUNCTION FN_ShownFoundPathMapStopsCoordinates
(
	-- Название маршрута
	@iPathName nvarchar( 50 ),
	-- Нaзвaниe карты
	@iMapName  nvarchar( 50 )
)
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			ID,
			-- Идeнтификaтop карты маршрута
			PathMapID,
			-- Идeнтификaтop маршрута
			PathID,
			-- Нaзвaниe      маршрута
			PathName,
			-- Идeнтификaтop карты
			MapID,
			-- Нaзвaниe      карты
			MapName,
			-- Идeнтификaтop остановки
			StopID,
			-- Нaзвaниe      остановки
			StopName,
			-- Номер         остановки в пределах маршрута
			PathStopNumber,
			-- Абсцисса      остановки
			StopX,
			-- Ордината      остановки
			StopY
		FROM dbo.FN_ShownStopsCoordinates( )
		WHERE
			PathName = @iPathName AND
			MapName  = @iMapName
	) -- RETURN
GO
-- FN_ShownFoundPathMapStopsCoordinates
------------------------------------------------------------------------------

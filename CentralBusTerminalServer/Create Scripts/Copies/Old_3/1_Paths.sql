-- Процедура определения значения ячейки FinalPoint таблицы Paths
-- Результат: удачно ли завершена процедура:
--   0 - да
--   1 - нет, нет маршрута с заданным кодом
--   2 - нет, маршрут с заданным кодом не встречается в таблице Stops
CREATE PROCEDURE SP_GetPathFinalPoint
(
	@parCode       T_PathCode,
	@parFinalPoint T_NullableNotEmptyString OUTPUT
)
AS
	-- Если нет маршрута с заданным кодом
	IF NOT EXISTS
	(
		SELECT *
			FROM Paths
			WHERE Code = @parCode
	)
		BEGIN
			SET @parFinalPoint = NULL
			RETURN 1
		END -- IF NOT EXISTS

	-- Если нет маршрута с заданным кодом в таблице Stops
	IF NOT EXISTS
	(
		SELECT *
			FROM Stops
			WHERE PathCode = @parCode
	)
		BEGIN
			SET @parFinalPoint = NULL
			RETURN 2
		END -- IF NOT EXISTS

	-- Конечный пункт - название остановки маршрута с наибольшим номером
	SELECT @parFinalPoint = Title
		FROM Stops
		WHERE
			PathCode = @parCode AND
			Number   =
			(
				SELECT MAX(Number)
					FROM Stops
					WHERE PathCode = @parCode
			)
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура расчёта значения ячейки Length таблицы Paths
-- Результат: удачно ли завершена процедура:
--   0 - да
--   1 - нет, нет маршрута с заданным кодом
--   2 - нет, маршрут с заданным кодом не встречается в таблице Stops
CREATE PROCEDURE SP_GetPathLength
(
	@parCode   T_PathCode,
	@parLength T_PathLength OUTPUT
)
AS
	-- Если нет маршрута с заданным кодом
	IF NOT EXISTS
	(
		SELECT *
			FROM Paths
			WHERE Code = @parCode
	)
		BEGIN
			SET @parLength = NULL
			RETURN 1
		END -- IF NOT EXISTS

	-- Если нет маршрута с заданным кодом в таблице Stops
	IF NOT EXISTS
	(
		SELECT *
			FROM Stops
			WHERE PathCode = @parCode
	)
		BEGIN
			SET @parLength = NULL
			RETURN 2
		END -- IF NOT EXISTS

	-- Длини пути - сумма расстояний между смежными остановками маршрута
	SELECT @parLength = SUM(AfterPreviousDistance)
		FROM Stops
		WHERE PathCode = @parCode
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура расчёта значения ячейки GazelleCategoryBusExpense таблицы Paths
-- Результат: удачно ли завершена процедура:
--   0 - да
--   1 - нет, нет маршрута с заданным кодом
CREATE PROCEDURE SP_GetPathGazelleCategoryBusExpense
(
	@parCode                      T_PathCode,
	@parGazelleCategoryBusExpense T_BusPathExpense OUTPUT
)
AS
	-- Если нет маршрута с заданным кодом
	IF NOT EXISTS
	(
		SELECT *
			FROM Paths
			WHERE Code = @parCode
	)
		BEGIN
			SET @parGazelleCategoryBusExpense = NULL
			RETURN 1
		END -- IF NOT EXISTS

	-- Расход для газели - произведение длины пути в километрах
	-- на стоимость одного километра преодаления данного маршрута газелью
	SET @parGazelleCategoryBusExpense =
	(
		SELECT GazelleCategoryBusCost1Km
			FROM Directions
			WHERE Code =
			(
				SELECT DirectionCode
					FROM Paths
					WHERE Code = @parCode
			) -- WHERE
	)
	*
	(
		SELECT Length
			FROM Paths
			WHERE Code = @parCode
	)
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура расчёта значения ячейки HardCategoryBusExpense таблицы Paths
-- Результат: удачно ли завершена процедура:
--   0 - да
--   1 - нет, нет маршрута с заданным кодом
CREATE PROCEDURE SP_GetPathHardCategoryBusExpense
(
	@parCode                   T_PathCode,
	@parHardCategoryBusExpense T_BusPathExpense OUTPUT
)
AS
	-- Если нет маршрута с заданным кодом
	IF NOT EXISTS
	(
		SELECT *
			FROM Paths
			WHERE Code = @parCode
	)
		BEGIN
			SET @parHardCategoryBusExpense = NULL
			RETURN 1
		END -- IF NOT EXISTS

	-- Расход для автобуса жёсткой категории -
	-- произведение длины пути в километрах на стоимость одного километра
	-- преодаления данного маршрута автобусом жёсткой категории
	SET @parHardCategoryBusExpense =
	(
		SELECT HardCategoryBusCost1Km
			FROM Directions
			WHERE Code =
			(
				SELECT DirectionCode
					FROM Paths
					WHERE Code = @parCode
			) -- WHERE
	)
	*
	(
		SELECT Length
			FROM Paths
			WHERE Code = @parCode
	)
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура расчёта значения ячейки SoftCategoryBusExpense таблицы Paths
-- Результат: удачно ли завершена процедура:
--   0 - да
--   1 - нет, нет маршрута с заданным кодом
CREATE PROCEDURE SP_GetPathSoftCategoryBusExpense
(
	@parCode                   T_PathCode,
	@parSoftCategoryBusExpense T_BusPathExpense OUTPUT
)
AS
	-- Если нет маршрута с заданным кодом
	IF NOT EXISTS
	(
		SELECT *
			FROM Paths
			WHERE Code = @parCode
	)
		BEGIN
			SET @parSoftCategoryBusExpense = NULL
			RETURN 1
		END -- IF NOT EXISTS

	-- Расход для автобуса мягкой категории -
	-- произведение длины пути в километрах на стоимость одного километра
	-- преодаления данного маршрута автобусом мягкой категории
	SET @parSoftCategoryBusExpense =
	(
		SELECT SoftCategoryBusCost1Km
			FROM Directions
			WHERE Code =
			(
				SELECT DirectionCode
					FROM Paths
					WHERE Code = @parCode
			) -- WHERE
	)
	*
	(
		SELECT Length
			FROM Paths
			WHERE Code = @parCode
	)
	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура определения значений вычисляемых ячеейк таблицы Paths
-- Результат: удачно ли завершена процедура:
--   0 - да
--   1 - нет, нет маршрута с заданным кодом
CREATE PROCEDURE SP_SetPathCalculatedCells (@parCode T_PathCode)
AS
	DECLARE
		-- Возвращаемое процедурой значение
		@locReturnValue int,
		-- Длина пути
		@locLength      T_PathLength

	-- Расчёт длины пути
	EXEC @locReturnValue = SP_GetPathLength
		@parCode,
		@locLength OUTPUT

	-- Если нет маршрута с заданным кодом
	IF @locReturnValue = 1
		RETURN @locReturnValue

	-- Отмена триггера обновления таблицы Paths
	ALTER TABLE Paths
		DISABLE TRIGGER TR_UpdatePath

	-- Изменение значения ячейки Length
	UPDATE Paths
		SET Length = @locLength
		WHERE Code = @parCode

	-- Oпределение конечного пункта
	DECLARE @locFinalPoint                T_NullableNotEmptyString
	EXEC SP_GetPathFinalPoint
		@parCode,
		@locFinalPoint                OUTPUT

	-- Определение расходов газели
	DECLARE @locGazelleCategoryBusExpense T_BusPathExpense
	EXEC SP_GetPathGazelleCategoryBusExpense
		@parCode,
		@locGazelleCategoryBusExpense OUTPUT

	-- Определение расходов автобуса жёсткой категории
	DECLARE @locHardCategoryBusExpense    T_BusPathExpense
	EXEC SP_GetPathHardCategoryBusExpense
		@parCode,
		@locHardCategoryBusExpense    OUTPUT

	-- Определение расходов автобуса мягкой категории
	DECLARE @locSoftCategoryBusExpense    T_BusPathExpense
	EXEC SP_GetPathSoftCategoryBusExpense
		@parCode,
		@locSoftCategoryBusExpense    OUTPUT

	-- Изменение значений ячеек FinalPoint, GazelleCategoryBusExpense,
	-- HardCategoryBusExpense, SoftCategoryBusExpense
	UPDATE Paths
		SET
			FinalPoint                = @locFinalPoint,
			GazelleCategoryBusExpense = @locGazelleCategoryBusExpense,
			HardCategoryBusExpense    = @locHardCategoryBusExpense,
			SoftCategoryBusExpense    = @locSoftCategoryBusExpense
		WHERE Code = @parCode

	-- Применение триггера обновления таблицы Paths
	ALTER TABLE Paths
		ENABLE TRIGGER TR_UpdatePath

	RETURN 0
GO
------------------------------------------------------------------------------

-- Процедура определения значений вычисляемых столбцов таблицы Paths
CREATE PROCEDURE SP_SetPathsCalculatedColumns
AS
	-- Отмена триггера обновления таблицы Paths
	ALTER TABLE Paths
		DISABLE TRIGGER TR_UpdatePath

	-- Объявление курсора
	DECLARE С_SetPathsCalculatedColumns SCROLL CURSOR
		FOR
			SELECT Code
				FROM Paths
		FOR
			UPDATE OF
				Length,
				FinalPoint,
				GazelleCategoryBusExpense,
				HardCategoryBusExpense,
				SoftCategoryBusExpense

	-- Открыти курсора
	OPEN С_SetPathsCalculatedColumns
		DECLARE
			-- Код
			@locCode                      T_PathCode,
			-- Длина пути
			@locLength                    T_PathLength,
			-- Конечный пункт
			@locFinalPoint                T_NullableNotEmptyString,
			-- Расходы газели
			@locGazelleCategoryBusExpense T_BusPathExpense,
			-- Расходы автобуса жёсткой категории
			@locHardCategoryBusExpense    T_BusPathExpense,
			-- Расходы автобуса мягкой категории
			@locSoftCategoryBusExpense    T_BusPathExpense

		-- Поиск первого маршрута
		FETCH FIRST
			FROM С_SetPathsCalculatedColumns
			INTO @locCode

		-- Расчёт агригированных атрибутов маршрута с найденным кодом
		-- до тех пор, пока не просмотрены все строки таблицы Paths
		-- Для ускорения вычислений при массовом обновлении строк
		-- процедура SP_SetPathCalculatedCells не применяется
		WHILE @@FETCH_STATUS = 0
			BEGIN
				EXEC SP_GetPathLength
					@locCode,
					@locLength                    OUTPUT
				UPDATE Paths
					SET Length = @locLength
					WHERE Code = @locCode
				EXEC SP_GetPathFinalPoint
					@locCode,
					@locFinalPoint                OUTPUT
				EXEC SP_GetPathGazelleCategoryBusExpense
					@locCode,
					@locGazelleCategoryBusExpense OUTPUT
				EXEC SP_GetPathHardCategoryBusExpense
					@locCode,
					@locHardCategoryBusExpense    OUTPUT
				EXEC SP_GetPathSoftCategoryBusExpense
					@locCode,
					@locSoftCategoryBusExpense    OUTPUT
				UPDATE Paths
					SET
						FinalPoint                = @locFinalPoint,
						GazelleCategoryBusExpense = @locGazelleCategoryBusExpense,
						HardCategoryBusExpense    = @locHardCategoryBusExpense,
						SoftCategoryBusExpense    = @locSoftCategoryBusExpense
					WHERE Code = @locCode

				-- Поиск следующего кода маршрута
				FETCH NEXT
					FROM С_SetPathsCalculatedColumns
					INTO @locCode
			END -- WHILE
	-- Закрытие курсора
	CLOSE С_SetPathsCalculatedColumns

	-- Удаление курсора
	DEALLOCATE С_SetPathsCalculatedColumns

	-- Применение триггера обновления таблицы Paths
	ALTER TABLE Paths
		ENABLE TRIGGER TR_UpdatePath
GO
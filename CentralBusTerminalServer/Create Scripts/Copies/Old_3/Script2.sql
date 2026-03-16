-- Функция получения идентификатора остановки конечного пункта маршрута
CREATE FUNCTION FN_GetPathFinalPointStopID
		-- Идeнтификaтop маршрута
		( @parPathID int )
	RETURNS int
AS
	BEGIN
		-- Остановка конечного пункта маршрута -
		-- остановки маршрута с наибольшим номером
		RETURN
		(
			SELECT ID
			FROM Stops
			WHERE
				PathID = @parPathID AND
				Number =
				(
					SELECT MAX( Number )
					FROM Stops
					WHERE PathID = @parPathID
				) -- SELECT
		) -- RETURN
	END -- FN_GetPathFinalPointStopID
GO
------------------------------------------------------------------------------

-- Функция получения длины пути маршрута
CREATE FUNCTION FN_GetPathLength
		-- Идeнтификaтop маршрута
		( @parPathID int )
	RETURNS int
AS
	BEGIN
		-- Длини пути маршрута -
		-- сумма расстояний между смежными остановками маршрута
		RETURN
		(
			SELECT SUM( AfterPreviousDistance )
			FROM Stops
			WHERE PathID = @parPathID
		) -- RETURN
	END -- FN_GetPathLength
GO
------------------------------------------------------------------------------


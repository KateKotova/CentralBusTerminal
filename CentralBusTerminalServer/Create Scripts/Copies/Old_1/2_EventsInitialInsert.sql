-- Запись исходных строк в таблицы реализованных событий -
-- Drivers, Buses, RunsExecution и TicketsSale

	-- Таблица Drivers
INSERT INTO Drivers (Code, Surname, FirstName, PatronymicName,
		PassportData, BirthDay, ServiceLength)
	VALUES (1, 'Уговорский', 'Авакум',  'Сирафимович',
		'12 34 567890', '1963/09/12', 22)
INSERT INTO Drivers (Code, Surname, FirstName, PatronymicName,
		PassportData, BirthDay, ServiceLength)
	VALUES (2, 'Заколкин',   'Тимофей', 'Спиридонович',
		'09 87 654321', '1977/07/07',  5)
INSERT INTO Drivers (Code, Surname, FirstName, PatronymicName,
		PassportData, BirthDay, ServiceLength)
	VALUES (3, 'Мониторов',  'Осип',    'Захарович',
		'13 24 354657', '1972/12/21',  7)

	-- Таблица Buses
INSERT INTO Buses (CarCode, Category, SeatsQuantity,
		UsageStartYear, SanityState)
	VALUES ('АБ 123 45', 'Газель',  12, 2002,    'Исправен')
INSERT INTO Buses (CarCode, Category, SeatsQuantity,
		UsageStartYear, SanityState)
	VALUES ('ЦД 678 90', 'Газель',  12, 1998, 'Не исправен')
INSERT INTO Buses (CarCode, Category, SeatsQuantity,
		UsageStartYear, SanityState)
	VALUES ('ВВ 111 22', 'Жёсткий', 21, 1995,    'Исправен')
INSERT INTO Buses (CarCode, Category, SeatsQuantity,
		UsageStartYear, SanityState)
	VALUES ('КУ 321 54', 'Жёсткий', 23, 1997,    'Исправен')
INSERT INTO Buses (CarCode, Category, SeatsQuantity,
		UsageStartYear, SanityState)
	VALUES ('МУ 000 11', 'Жёсткий', 21, 1999, 'Не исправен')
INSERT INTO Buses (CarCode, Category, SeatsQuantity,
		UsageStartYear, SanityState)
	VALUES ('ЫЫ 777 88', 'Мягкий',  34, 2003,    'Исправен')
INSERT INTO Buses (CarCode, Category, SeatsQuantity,
		UsageStartYear, SanityState)
	VALUES ('АО 432 10', 'Мягкий',  70, 2006,    'Исправен')
INSERT INTO Buses (CarCode, Category, SeatsQuantity,
		UsageStartYear, SanityState)
	VALUES ('ЭЪ 680 42', 'Мягкий',  34, 2001, 'Не исправен')

	-- Таблица RunsExecution
INSERT INTO RunsExecution ([Date], Code, BusCarCode, DriverCode)
	VALUES ('2007/04/13', 203, 'ЫЫ 777 88', 1)
INSERT INTO RunsExecution ([Date], Code, BusCarCode, DriverCode)
	VALUES ('2007/05/03', 326, 'КУ 321 54', 2)
INSERT INTO RunsExecution ([Date], Code, BusCarCode, DriverCode)
	VALUES ('2007/06/27', 160, 'АБ 123 45', 3)

	-- Таблица TicketsSale
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/04/13', 203,  4,  'Продано', 'Без багажа')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/04/13', 203, 10,  'Продано',  'С багажом')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/04/13', 203, 13,  'Продано', 'Без багажа')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/04/13', 203, 24,  'Продано',  'С багажом')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/04/13', 203, 20, 'Свободно', 'Без багажа')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/04/13', 203, 11, 'Свободно', 'Без багажа')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/05/03', 326,  2,  'Продано', 'Без багажа')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/05/03', 326, 20,  'Продано',  'С багажом')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/05/03', 326,  1, 'Свободно', 'Без багажа')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/06/27', 160,  1,  'Продано', 'Без багажа')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/06/27', 160,  2,  'Продано', 'Без багажа')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/06/27', 160,  3,  'Продано',  'С багажом')
INSERT INTO TicketsSale ([Date], RunCode, Number, SaleState, LuggagePresence)
	VALUES ('2007/06/27', 160,  9, 'Свободно', 'Без багажа')
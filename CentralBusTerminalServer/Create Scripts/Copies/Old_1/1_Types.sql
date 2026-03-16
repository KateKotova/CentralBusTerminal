-- Основные типы атрибутов таблиц

-- Положительное число
CREATE RULE R_PositiveNumber
	AS @locvPositivenumber > 0
GO
-- Небольшое положительное целое число
CREATE TYPE T_NotNullPositiveTinyint
	FROM tinyint NOT NULL
GO
EXEC sp_bindrule 'R_PositiveNumber', 'T_NotNullPositiveTinyint'
GO

-- Строка, допускающая неопределённое и пустое значения
CREATE TYPE T_NullableString
	FROM varchar(50) NULL
GO

-- Непустая строка
CREATE RULE R_NotEmptyString
	AS LEN(@locNotEmptyString) <> 0
GO

-- Строка, допускающая неопределённое, но не пустое значение
CREATE TYPE T_NullableNotEmptyString
	FROM varchar(50) NULL
GO
EXEC sp_bindrule 'R_NotEmptyString', 'T_NullableNotEmptyString'
GO

-- Строка, не допускающая неопределённого или пустого значения
CREATE TYPE T_NotNullNotEmptyString
	FROM varchar(50) NOT NULL
GO
EXEC sp_bindrule 'R_NotEmptyString', 'T_NotNullNotEmptyString'
GO

-- Длинная строка, допускающая неопределённое и пустое значения
CREATE TYPE T_NullableLongString
	FROM varchar(360) NULL
GO

-- Длинная строка, не допускающая неопределённого значения
CREATE TYPE T_NotNullLongString
	FROM varchar(360) NOT NULL
GO

-- Огромная строка, допускающая неопределённое и пустое значения
CREATE TYPE T_NullableHugeString
	FROM varchar(1500) NULL
GO

-- Огромная строка, не допускающая неопределённое значение
CREATE TYPE T_NotNullHugeString
	FROM varchar(1500) NOT NULL
GO

-- Признак существования
-- Альтернатива: не или уже
CREATE RULE R_ExistenceState
	AS @locExistenceState IN ('не', 'уже')
GO
CREATE TYPE T_ExistenceState
	FROM varchar(3) NOT NULL
GO
EXEC sp_bindrule   'R_ExistenceState',  'T_ExistenceState'
GO
------------------------------------------------------------------------------
-- Типы атрибутов таблицы водителей автобусов

-- Код водителя автобуса
-- Значвение в диапазоне от 1 до 300
CREATE RULE R_BusDriverCode
	AS @locBusDriverCode BETWEEN 1 AND 300
GO
CREATE TYPE T_BusDriverCode
	FROM smallint NOT NULL
GO
EXEC sp_bindrule 'R_BusDriverCode', 'T_BusDriverCode'
GO

-- Cоставляющее Ф.И.О.
-- Строка, начинающаяся с залавной русской буквы
CREATE RULE R_PersonName
	AS @locPersonName LIKE '[А-Я]%'
GO
CREATE TYPE T_PersonName
	FROM varchar(25) NOT NULL
GO
EXEC sp_bindrule 'R_PersonName', 'T_PersonName'
GO

-- Паспортные данные
-- Строка из трёх групп символов отделённых пробелами:
-- две цифры и две цифры - серия и шесть цифр - номер
CREATE RULE R_PassportData
	AS @locPassportData LIKE
		'[0-9][0-9] [0-9][0-9] [0-9][0-9][0-9][0-9][0-9][0-9]'
GO
CREATE TYPE T_PassportData
	FROM char(12) NOT NULL
GO
EXEC sp_bindrule 'R_PassportData', 'T_PassportData'
GO

-- Дата рождения водителя автобуса
-- Дата такова, что водитель не мог родиться позже сегоднешнего дня,
-- позже, чем максимально установлення дата
-- и раньше 1947 года (в этом случае в 2007 ему будет 60 лет),
-- а также водитель должен достигнуть совершеннолетия по западным меркам
-- (текущий год минус год рождения должен быть не меньше,
-- чем возраст совершеннолетия - 21 лет)
CREATE RULE R_BusDriverBirthDay
AS
	@locBusDriverBirthDay BETWEEN '1947/01/01' AND '2079/06/06' AND
	YEAR(GETDATE()) - YEAR(@locBusDriverBirthDay) BETWEEN 21 AND 60
GO
CREATE TYPE T_BusDriverBirthDay
	FROM smalldatetime NOT NULL
GO
EXEC sp_bindrule 'R_BusDriverBirthDay', 'T_BusDriverBirthDay'
GO

-- Стаж водителя автобуса - количество лет,
-- в течение которых он проработал водителем автобуса
-- Значвение в диапазоне от 3 до 45, по умолчанию - 3
CREATE RULE R_BusDriverServiceLength
	AS @locvBusDriverServiceLength BETWEEN 3 AND 45
GO
CREATE DEFAULT DF_BusDriverServiceLength
	AS 3
GO
CREATE TYPE T_BusDriverServiceLength
	FROM tinyint NOT NULL
GO
EXEC sp_bindrule   'R_BusDriverServiceLength',  'T_BusDriverServiceLength'
GO
EXEC sp_bindefault 'DF_BusDriverServiceLength', 'T_BusDriverServiceLength'
GO
------------------------------------------------------------------------------
-- Типы атрибутов таблицы автобусов

-- Автомобильный код
-- Строка из трёх групп символов отделённых пробелами:
-- две заглавные русские буквы, три цифры и две цифры
CREATE RULE R_CarCode
	AS @locCarCode LIKE '[А-Я][А-Я] [0-9][0-9][0-9] [0-9][0-9]'
GO
CREATE TYPE T_CarCode
	FROM char(9) NOT NULL
GO
EXEC sp_bindrule 'R_CarCode', 'T_CarCode'
GO

-- Категория автобуса
-- Альтернатива: коммерческий (газель), жёсткий или мягкий
-- по умолчанию - жёсткий
CREATE RULE R_BusCategory
	AS @locBusCategory IN ('Газель', 'Жёсткий', 'Мягкий')
GO
CREATE DEFAULT DF_BusCategory
	AS 'Жёсткий'
GO
CREATE TYPE T_BusCategory
	FROM varchar(7) NOT NULL
GO
EXEC sp_bindrule   'R_BusCategory',  'T_BusCategory'
GO
EXEC sp_bindefault 'DF_BusCategory', 'T_BusCategory'
GO

-- Количество пассажирских мест в автобусе
-- Альтернатива: 12, 21, 23, 34,или 70
CREATE RULE R_BusSeatsQuantity
	AS @locBusSeatsQuantity IN (12, 21, 23, 34, 70)
GO
CREATE TYPE T_BusSeatsQuantity
	FROM tinyint NOT NULL
GO
EXEC sp_bindrule 'R_BusSeatsQuantity', 'T_BusSeatsQuantity'
GO

-- Год начала эксплуатации автобуса
-- Год таков, что эксплуатация автобуса не могла бы начаться
-- раньше 1992 года, так как его максимальный срок - примерно 15 лет,
-- позже, чем максимально установленнЫЙ год - 2079-ый,
-- раньше, чем текущий год,
-- и срок эксплуатации не может превышать 15-ти лет
-- (текущий год минус год начала эксплуатации не больше, чем 15 лет),
-- по умолчанию год равен текущему
CREATE RULE R_BusUsageStartYear
AS
	@locBusUsageStartYear BETWEEN 1992 AND 2079 AND
	(YEAR(GETDATE()) - @locBusUsageStartYear) BETWEEN 0 AND 15
GO
CREATE DEFAULT DF_BusUsageStartYear
	AS YEAR(GETDATE())
GO
CREATE TYPE T_BusUsageStartYear
	FROM smallint NOT NULL
GO
EXEC sp_bindrule   'R_BusUsageStartYear',  'T_BusUsageStartYear'
GO
EXEC sp_bindefault 'DF_BusUsageStartYear', 'T_BusUsageStartYear'
GO

-- Исправность - признак годности для эксплуатации в текущий момент
-- Альтернатива: исправен или не исправен, по умолчанию - исправен
CREATE RULE R_SanityState
	AS @locSanityState IN ('Исправен', 'Не исправен')
GO
CREATE DEFAULT DF_SanityState
	AS 'Исправен'
GO
CREATE TYPE T_SanityState
	FROM varchar(11) NOT NULL
GO
EXEC sp_bindrule   'R_SanityState',  'T_SanityState'
GO
EXEC sp_bindefault 'DF_SanityState', 'T_SanityState'
GO
------------------------------------------------------------------------------
-- Типы атрибутов таблицы направлений

-- Код направления следования автобусного маршрута
-- в некоторой географической области
-- Значвение в диапазоне от 1 до 30
CREATE RULE R_DirectionCode
	AS @locDirectionCode BETWEEN 1 AND 30
GO
CREATE TYPE T_DirectionCode
	FROM tinyint NOT NULL
GO
EXEC sp_bindrule 'R_DirectionCode', 'T_DirectionCode'
GO

-- Cтоимость одного километра направления для автобуса некоторой категории -
-- расходы в рублях на преодаление одного километра в данном направлении
-- Значвение в диапазоне от 10 до 150
CREATE RULE R_BusDirectionCost1Km
	AS @locBusDirectionCost1Km BETWEEN 10 AND 150
GO
CREATE TYPE T_BusDirectionCost1Km
	FROM smallmoney NULL
GO
EXEC sp_bindrule 'R_BusDirectionCost1Km', 'T_BusDirectionCost1Km'
GO
------------------------------------------------------------------------------
-- Типы атрибутов таблицы маршрутов

-- Код маршрута
-- Значвение в диапазоне от 1 до 75
CREATE RULE R_PathCode
	AS @locPathCode BETWEEN 1 AND 75
GO
CREATE TYPE T_PathCode
	FROM tinyint NOT NULL
GO
EXEC sp_bindrule 'R_PathCode', 'T_PathCode'
GO

-- Дальность маршрута
-- Альтернатива: пригородный или междугородный, по умолчанию - пригородный
CREATE RULE R_PathRangeKind
	AS @locPathRangeKind IN ('Пригородный', 'Междугородный')
GO
CREATE DEFAULT DF_PathRangeKind
	AS 'Пригородный'
GO
CREATE TYPE T_PathRangeKind
	FROM varchar(13) NOT NULL
GO
EXEC sp_bindrule   'R_PathRangeKind',  'T_PathRangeKind'
GO
EXEC sp_bindefault 'DF_PathRangeKind', 'T_PathRangeKind'
GO

-- Номер платформы, с которой отходит по соответствующему маршруту автобус
-- Значвение в диапазоне от 1 до 10, по умолчанию - 1
CREATE RULE R_PlatformNumber
	AS @locPlatformNumber BETWEEN 1 AND 10
GO
CREATE DEFAULT DF_PlatformNumber
	AS 1
GO
CREATE TYPE T_PlatformNumber
	FROM tinyint NOT NULL
GO
EXEC sp_bindrule   'R_PlatformNumber',  'T_PlatformNumber'
GO
EXEC sp_bindefault 'DF_PlatformNumber', 'T_PlatformNumber'
GO

-- Длина пути - расстояние от автовокзала до конечного пунтка,
-- затраченное на прохождение соответствующего маршрута
-- Значвение в диапазоне от 0,500 до 10000,000
CREATE RULE R_PathLength
	AS @locPathLength BETWEEN 0.500 AND 10000.000
GO
CREATE TYPE T_PathLength
	FROM decimal(8, 3) NULL
GO
EXEC sp_bindrule 'R_PathLength', 'T_PathLength'
GO

-- Цена билета на автобус
-- Значвение в диапазоне от 7 до 500
CREATE RULE R_BusTicketCost
	AS @locBusTicketCost BETWEEN 7 AND 500
GO
CREATE TYPE T_BusTicketCost
	FROM smallmoney NULL
GO
EXEC sp_bindrule 'R_BusTicketCost', 'T_BusTicketCost'
GO

-- Стоимость провоза багажа для пассажира
-- Значвение в диапазоне от 3 до 100
CREATE RULE R_BusSeatLuggageTransportCost
	AS @locBusLuggageTransportCost BETWEEN 3 AND 100
GO
CREATE TYPE T_BusSeatLuggageTransportCost
	FROM smallmoney NULL
GO
EXEC sp_bindrule 'R_BusSeatLuggageTransportCost',
	               'T_BusSeatLuggageTransportCost'
GO

-- Расход автобуса некоторой категории в рублях на преодаление маршрута
-- Значвение в диапазоне от 84 до 35000
CREATE RULE R_BusPathExpense
	AS @locBusPathExpense BETWEEN 84 AND 35000
GO
CREATE TYPE T_BusPathExpense
	FROM smallmoney NULL
GO
EXEC sp_bindrule 'R_BusPathExpense', 'T_BusPathExpense'
GO
------------------------------------------------------------------------------
-- Типы атрибутов таблицы остановок

-- Номер остановки в пределах маршрута
-- Значвение в диапазоне от 1 до 30
CREATE RULE R_PathBusStopNumber
	AS @locPathBusStopNumber BETWEEN 1 AND 30
GO
CREATE TYPE T_PathBusStopNumber
	FROM tinyint NOT NULL
GO
EXEC sp_bindrule 'R_PathBusStopNumber', 'T_PathBusStopNumber'
GO

-- Расстояние в километрах с точностью до метра между данной остановкой
-- и предшествующей ей при выезде с автовокзала в направлении конечного пункта
-- Значвение в диапазоне от 0.500 до 100.000, по умолчанию - 0.500
CREATE RULE R_AfterPathPreviousBusStopDistance
	AS @locAfterPathPreviousBusStopDistance BETWEEN 0.500 AND 100.000
GO
CREATE DEFAULT DF_AfterPathPreviousBusStopDistance
	AS 0.500
GO
CREATE TYPE T_AfterPathPreviousBusStopDistance
	FROM decimal(6, 3) NOT NULL
GO
EXEC sp_bindrule   'R_AfterPathPreviousBusStopDistance',
	                 'T_AfterPathPreviousBusStopDistance'
GO
EXEC sp_bindefault 'DF_AfterPathPreviousBusStopDistance',
	                 'T_AfterPathPreviousBusStopDistance'
GO
------------------------------------------------------------------------------
-- Типы атрибутов таблицы расписания рейсов

-- Код еженедельного рейса маршрута
-- Значвение в диапазоне от 1 до 3000
CREATE RULE R_RunCode
	AS @locRunCode BETWEEN 1 AND 3000
GO
CREATE TYPE T_RunCode
	FROM smallint NOT NULL
GO
EXEC sp_bindrule 'R_RunCode', 'T_RunCode'
GO

-- День недели
-- Альтернатива: понедельник, вторник, среда, четверг, пятница,
-- суббота или воскресенье, по умолчанию - понедельник
CREATE RULE R_Weekday
	AS @locWeekday IN ('Понедельник', 'Вторник', 'Среда','Четверг',
	                   'Пятница',     'Суббота', 'Воскресенье')
GO
CREATE DEFAULT DF_Weekday
	AS 'Понедельник'
GO
CREATE TYPE T_Weekday
	FROM varchar(11) NULL
GO
EXEC sp_bindrule   'R_Weekday',  'T_Weekday'
GO
EXEC sp_bindefault 'DF_Weekday', 'T_Weekday'
GO

-- Время
-- Время, по умолчанию равное 7:00
CREATE DEFAULT DF_Time
	AS '07:00:00'
GO
CREATE TYPE T_Time
	FROM smalldatetime NOT NULL
GO
EXEC sp_bindefault 'DF_Time', 'T_Time'
GO
------------------------------------------------------------------------------
-- Типы атрибутов таблицы выполнения рейсов

-- Дата выполнения реса, сопоставимая с текущей датой
-- Дата такова, что рейс не мог бы быть выполнен позже текущего дня,
-- позже, чем максимально установлення дата и раньше 1992 года
CREATE RULE R_RunExecutionDate
AS
	@locRunExecutionDate BETWEEN '1992/01/01' AND '2079/06/06' AND
	@locRunExecutionDate <= GETDATE()
GO
CREATE TYPE T_RunExecutionDate
	FROM datetime NOT NULL
GO
EXEC sp_bindrule 'R_RunExecutionDate', 'T_RunExecutionDate'
GO

-- Количество проданных билетов
-- Значвение в диапазоне от 0 до 70
CREATE RULE R_SoldBusTicketsQuantity
	AS @locSoldBusTicketsQuantity BETWEEN 0 AND 70
GO
CREATE TYPE T_SoldBusTicketsQuantity
	FROM tinyint NULL
GO
EXEC sp_bindrule 'R_SoldBusTicketsQuantity', 'T_SoldBusTicketsQuantity'
GO

-- Доход от продажи билетов и провоза багажа
-- за реализацию запланированного рейса
-- Значвение в диапазоне от 0 до 25000
CREATE RULE R_RunIncome
	AS @locRunIncome BETWEEN 0 AND 25000
GO
CREATE TYPE T_RunIncome
	FROM smallmoney NULL
GO
EXEC sp_bindrule 'R_RunIncome', 'T_RunIncome'
GO
------------------------------------------------------------------------------
-- Типы атрибутов таблицы продажи автобусных билетов

-- Номер посадочного места в автобусе
-- Значвение в диапазоне от 1 до 70
CREATE RULE R_BusSeatNumber
	AS @locBusSeatNumber BETWEEN 1 AND 70
GO
CREATE TYPE T_BusSeatNumber
	FROM tinyint NOT NULL
GO
EXEC sp_bindrule 'R_BusSeatNumber', 'T_BusSeatNumber'
GO

-- Признак продажи билета на место в автобусе
-- Альтернатива: свободно или продано, по умолчанию - свободно
CREATE RULE R_BusSeatSaleState
	AS @locBusSeatSaleState IN ('Свободно', 'Продано')
GO
CREATE DEFAULT DF_BusSeatSaleState
	AS 'Свободно'
GO
CREATE TYPE T_BusSeatSaleState
	FROM varchar(8) NOT NULL
GO
EXEC sp_bindrule   'R_BusSeatSaleState',  'T_BusSeatSaleState'
GO
EXEC sp_bindefault 'DF_BusSeatSaleState', 'T_BusSeatSaleState'
GO

-- Признак провоза багажа пасажиром в автобусе
-- Альтернатива: без багажа или с багажом, по умолчанию - без багажа
CREATE RULE R_BusSeatLuggagePresence
	AS @locBusSeatLuggagePresence IN ('Без багажа', 'С багажом')
GO
CREATE DEFAULT DF_BusSeatLuggagePresence
	AS 'Без багажа'
GO
CREATE TYPE T_BusSeatLuggagePresence
	FROM varchar(10) NOT NULL
GO
EXEC sp_bindrule   'R_BusSeatLuggagePresence',  'T_BusSeatLuggagePresence'
GO
EXEC sp_bindefault 'DF_BusSeatLuggagePresence', 'T_BusSeatLuggagePresence'
GO
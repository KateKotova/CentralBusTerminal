-- Основные типы атрибутов таблиц

-- Небольшое положительное целое число
GRANT CONTROL
	ON TYPE :: T_NotNullPositiveTinyint
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_NotNullPositiveTinyint
	TO RL_Supervisor
	WITH GRANT OPTION

-- Строка, допускающая неопределённое и пустое значения
GRANT CONTROL
	ON TYPE :: T_NullableString
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_NullableString
	TO RL_Supervisor
	WITH GRANT OPTION

-- Строка, допускающая неопределённое, но не пустое значение
GRANT CONTROL
	ON TYPE :: T_NullableNotEmptyString
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_NullableNotEmptyString
	TO RL_Supervisor
	WITH GRANT OPTION

-- Строка, не допускающая неопределённого или пустого значения
GRANT CONTROL
	ON TYPE :: T_NotNullNotEmptyString
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_NotNullNotEmptyString
	TO RL_Supervisor
	WITH GRANT OPTION

-- Длинная строка, допускающая неопределённое и пустое значения
GRANT CONTROL
	ON TYPE :: T_NullableLongString
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_NullableLongString
	TO RL_Supervisor
	WITH GRANT OPTION

-- Длинная строка, не допускающая неопределённого значения
GRANT CONTROL
	ON TYPE :: T_NotNullLongString
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_NotNullLongString
	TO RL_Supervisor
	WITH GRANT OPTION

-- Обширная строка, допускающая неопределённое и пустое значения
GRANT CONTROL
	ON TYPE :: T_NullableHugeString
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_NullableHugeString
	TO RL_Supervisor
	WITH GRANT OPTION

-- Обширная строка, не допускающая неопределённое значение
GRANT CONTROL
	ON TYPE :: T_NotNullHugeString
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_NotNullHugeString
	TO RL_Supervisor
	WITH GRANT OPTION

-- Признак существования
GRANT CONTROL
	ON TYPE :: T_ExistenceState
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_ExistenceState
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Типы атрибутов таблицы водителей автобусов

-- Код водителя автобуса
GRANT CONTROL
	ON TYPE :: T_BusDriverCode
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusDriverCode
	TO RL_Supervisor
	WITH GRANT OPTION

-- Cоставляющее Ф.И.О.
GRANT CONTROL
	ON TYPE :: T_PersonName
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_PersonName
	TO RL_Supervisor
	WITH GRANT OPTION

-- Паспортные данные
GRANT CONTROL
	ON TYPE :: T_PassportData
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_PassportData
	TO RL_Supervisor
	WITH GRANT OPTION

-- Дата рождения водителя автобуса
GRANT CONTROL
	ON TYPE :: T_BusDriverBirthDay
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusDriverBirthDay
	TO RL_Supervisor
	WITH GRANT OPTION

-- Стаж водителя автобуса
GRANT CONTROL
	ON TYPE :: T_BusDriverServiceLength
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusDriverServiceLength
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Типы атрибутов таблицы автобусов

-- Автомобильный код
GRANT CONTROL
	ON TYPE :: T_CarCode
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_CarCode
	TO RL_Supervisor
	WITH GRANT OPTION

-- Категория автобуса
GRANT CONTROL
	ON TYPE :: T_BusCategory
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusCategory
	TO RL_Supervisor
	WITH GRANT OPTION

-- Количество пассажирских мест в автобусе
GRANT CONTROL
	ON TYPE :: T_BusSeatsQuantity
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusSeatsQuantity
	TO RL_Supervisor
	WITH GRANT OPTION

-- Год начала эксплуатации автобуса
GRANT CONTROL
	ON TYPE :: T_BusUsageStartYear
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusUsageStartYear
	TO RL_Supervisor
	WITH GRANT OPTION

-- Исправность
GRANT CONTROL
	ON TYPE :: T_SanityState
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_SanityState
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Типы атрибутов таблицы направлений

-- Код направления следования автобусного маршрута
GRANT CONTROL
	ON TYPE :: T_DirectionCode
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_DirectionCode
	TO RL_Supervisor
	WITH GRANT OPTION

-- Cтоимость одного километра направления для автобуса некоторой категории
GRANT CONTROL
	ON TYPE :: T_BusDirectionCost1Km
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusDirectionCost1Km
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Типы атрибутов таблицы маршрутов

-- Код маршрута
GRANT CONTROL
	ON TYPE :: T_PathCode
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_PathCode
	TO RL_Supervisor
	WITH GRANT OPTION

-- Дальность маршрута
GRANT CONTROL
	ON TYPE :: T_PathRangeKind
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_PathRangeKind
	TO RL_Supervisor
	WITH GRANT OPTION

-- Номер платформы, с которой отходит по соответствующему маршруту автобус
GRANT CONTROL
	ON TYPE :: T_PlatformNumber
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_PlatformNumber
	TO RL_Supervisor
	WITH GRANT OPTION

-- Длина пути
GRANT CONTROL
	ON TYPE :: T_PathLength
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_PathLength
	TO RL_Supervisor
	WITH GRANT OPTION

-- Цена билета на автобус
GRANT CONTROL
	ON TYPE :: T_BusTicketCost
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusTicketCost
	TO RL_Supervisor
	WITH GRANT OPTION

-- Стоимость провоза багажа для пассажира
GRANT CONTROL
	ON TYPE :: T_BusSeatLuggageTransportCost
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusSeatLuggageTransportCost
	TO RL_Supervisor
	WITH GRANT OPTION

-- Расход автобуса некоторой категории в рублях на преодаление маршрута
GRANT CONTROL
	ON TYPE :: T_BusPathExpense
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusPathExpense
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Типы атрибутов таблицы остановок

-- Номер остановки в пределах маршрута
GRANT CONTROL
	ON TYPE :: T_PathBusStopNumber
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_PathBusStopNumber
	TO RL_Supervisor
	WITH GRANT OPTION

-- Расстояние между данной остановкой и предшествующей
GRANT CONTROL
	ON TYPE :: T_AfterPathPreviousBusStopDistance
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_AfterPathPreviousBusStopDistance
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Типы атрибутов таблицы расписания рейсов

-- Код еженедельного рейса маршрута
GRANT CONTROL
	ON TYPE :: T_RunCode
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_RunCode
	TO RL_Supervisor
	WITH GRANT OPTION

-- День недели
GRANT CONTROL
	ON TYPE :: T_Weekday
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_Weekday
	TO RL_Supervisor
	WITH GRANT OPTION

-- Время
GRANT CONTROL
	ON TYPE :: T_Time
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_Time
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Типы атрибутов таблицы выполнения рейсов

-- Дата выполнения реса, сопоставимая с текущей датой
GRANT CONTROL
	ON TYPE :: T_RunExecutionDate
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_RunExecutionDate
	TO RL_Supervisor
	WITH GRANT OPTION

-- Количество проданных билетов
GRANT CONTROL
	ON TYPE :: T_SoldBusTicketsQuantity
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_SoldBusTicketsQuantity
	TO RL_Supervisor
	WITH GRANT OPTION

-- Доход от продажи билетов и провоза багажа
GRANT CONTROL
	ON TYPE :: T_RunIncome
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_RunIncome
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Типы атрибутов таблицы продажи автобусных билетов

-- Номер посадочного места в автобусе
GRANT CONTROL
	ON TYPE :: T_BusSeatNumber
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusSeatNumber
	TO RL_Supervisor
	WITH GRANT OPTION

-- Признак продажи билета на место в автобусе
GRANT CONTROL
	ON TYPE :: T_BusSeatSaleState
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusSeatSaleState
	TO RL_Supervisor
	WITH GRANT OPTION

-- Признак провоза багажа пасажиром в автобусе
GRANT CONTROL
	ON TYPE :: T_BusSeatLuggagePresence
	TO RL_Manager
	WITH GRANT OPTION
GRANT VIEW DEFINITION
	ON TYPE :: T_BusSeatLuggagePresence
	TO RL_Supervisor
	WITH GRANT OPTION
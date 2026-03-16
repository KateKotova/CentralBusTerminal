-- Таблицы-справочники данных констант

-- Таблица-справочник границ типов
CREATE TABLE TypesBorders
(
	-- Название - первичный ключ
	[Name]  T_NotNullNotEmptyString
		CONSTRAINT PK_TypesBorders_Name
			PRIMARY KEY,
	-- Минимальное значение
	Minimum T_NotNullNotEmptyString,
	-- Максимальное значение
	Maximum T_NotNullNotEmptyString,
) -- CREATE TABLE TypesBorders
GO

-- Таблица-справочник масок типов
CREATE TABLE TypesMasks
(
	-- Название - первичный ключ
	[Name] T_NotNullNotEmptyString
		CONSTRAINT PK_TypesMasks_Name
			PRIMARY KEY,
	-- Маска
	Mask   T_NotNullLongString
) -- CREATE TABLE TypesMasks
GO

-- Таблица-справочник значений перечислимых типов
CREATE TABLE TypesValues
(
	-- Название типа
	TypeName T_NotNullNotEmptyString,
	-- Значение
	Value    T_NotNullNotEmptyString,
	-- Название типа и значение - первичный ключ
	CONSTRAINT PK_TypesValues_TypeNameValue
		PRIMARY KEY (TypeName, Value),
	-- Номер
	Number   T_NotNullPositiveTinyint,
	-- Название типа и номер - уникальное сочетание
	CONSTRAINT UK_TypesValues_TypeNameNumber
		UNIQUE (TypeName, Number)
) -- CREATE TABLE TypesValues
GO

-- Таблица-справочник умолчаний типов
CREATE TABLE TypesDefaults
(
	-- Название - первичный ключ
	[Name]    T_NotNullNotEmptyString
		CONSTRAINT PK_TypesDefaults_Name
			PRIMARY KEY,
	-- Умолчание
	[Default] T_NotNullNotEmptyString,
) -- CREATE TABLE TypesDefaults
GO

-- Таблица-справочник заголовков таблиц
CREATE TABLE TablesCaptions
(
	-- Название - первичный ключ
	[Name]                   T_NotNullNotEmptyString
		CONSTRAINT PK_TablesCaptions_Name
			PRIMARY KEY,
	-- Заголовок в именительном падаже
	NominitiveCaseCaption    T_NotNullNotEmptyString,
	-- Заголовок в родительном падаже
	GenitiveCaseCaption      T_NotNullNotEmptyString,
	-- Заголовок строки в именительном падаже
	NominitiveCaseRowCaption T_NotNullNotEmptyString,
	-- Заголовок строки в родительном падаже
	GenitiveCaseRowCaption   T_NotNullNotEmptyString,
) -- CREATE TABLE TablesCaptions
GO

-- Таблица-справочник заголовков атрибутов таблиц
CREATE TABLE TablesAttributesCaptions
(
	-- Название таблицы - внешний ключ
	TableName             T_NotNullNotEmptyString
		CONSTRAINT FK_TablesAttributesCaptions_TablesCaptions_TableName
			FOREIGN KEY
				REFERENCES TablesCaptions ([Name])
					ON DELETE CASCADE
					ON UPDATE CASCADE,
	-- Название
	[Name]                T_NotNullNotEmptyString,
	-- Название таблицы и название - первичный ключ
	CONSTRAINT PK_TablesAttributesCaptions_TableNameName
		PRIMARY KEY (TableName, [Name]),
	-- Заголовок в именительном падаже
	NominitiveCaseCaption T_NotNullNotEmptyString,
	-- Заголовок в родительном падаже
	GenitiveCaseCaption   T_NotNullNotEmptyString
) -- CREATE TABLE TablesAttributesCaptions
GO
------------------------------------------------------------------------------
-- Таблицы данных центрального автовокзала

-- Таблица водителей автобусов
CREATE TABLE Drivers
(
	-- Код - первичный ключ
	Code           T_BusDriverCode
		CONSTRAINT PK_Drivers_Code
			PRIMARY KEY,
	-- Фамилия
	Surname        T_PersonName,
	-- Имя
	FirstName      T_PersonName,
	-- Отчество
	PatronymicName T_PersonName,
	-- Паспортные данные - уникальные
	PassportData   T_PassportData
		CONSTRAINT UK_Drivers_PassportData
			UNIQUE,
	-- Дата рождения
	BirthDay       T_BusDriverBirthDay,
	-- Стаж
	ServiceLength  T_BusDriverServiceLength,
) -- CREATE TABLE Drivers
GO

-- Таблица автобусов
CREATE TABLE Buses
(
	-- Автомобильный номер - первичный ключ
	CarCode        T_CarCode
		CONSTRAINT PK_Buses_CarCode
			PRIMARY KEY,
	-- Категория
	Category       T_BusCategory,
	-- Количество пассажирских мест
	SeatsQuantity  T_BusSeatsQuantity,
	-- Год начала эксплуатации
	UsageStartYear T_BusUsageStartYear,
	-- Исправность
	SanityState    T_SanityState
) -- CREATE TABLE Buses
GO

-- Таблица направлений
CREATE TABLE Directions
(
	-- Код - первичный ключ
	Code                      T_DirectionCode
		CONSTRAINT PK_Directions_Code
			PRIMARY KEY,
	-- Название
	Title                     T_NotNullNotEmptyString,
	-- Стоимость 1 км для газели
	GazelleCategoryBusCost1Km T_BusDirectionCost1Km,
	-- Стоимость 1 км для автобуса жёсткой категории
	HardCategoryBusCost1Km    T_BusDirectionCost1Km,
	-- Стоимость 1 км для автобуса мягкой категории
	SoftCategoryBusCost1Km    T_BusDirectionCost1Km
) -- CREATE TABLE Directions
GO

-- Таблица маршрутов
CREATE TABLE Paths
(
	-- Код - первичный ключ
	Code                         T_PathCode
		CONSTRAINT PK_Paths_Code
			PRIMARY KEY,
	-- Название
	Title                        T_NotNullNotEmptyString,
	-- Код направления - внешний ключ
	DirectionCode                T_DirectionCode
		CONSTRAINT FK_Paths_Directions_DirectionCode
			FOREIGN KEY
				REFERENCES Directions (Code)
					ON DELETE CASCADE
					ON UPDATE CASCADE,
	-- Конечный пункт
	FinalPoint                   T_NullableNotEmptyString,
	-- Дальность
	RangeKind                    T_PathRangeKind,
	-- Номер платформы
	PlatformNumber               T_PlatformNumber,
	-- Длина пути
	Length                       T_PathLength,
	-- Цена билета на газель
	GazelleCategoryBusTicketCost T_BusTicketCost,
	-- Цена билета на автобус жёсткой категории
	HardCategoryBusTicketCost    T_BusTicketCost,
	-- Цена билета на автобус мягкой категории
	SoftCategoryBusTicketCost    T_BusTicketCost,
	-- Стоимость провоза багажа
	SeatLuggageTransportCost     T_BusSeatLuggageTransportCost,
	-- Расходы газели
	GazelleCategoryBusExpense    T_BusPathExpense,
	-- Расходы автобуса жёсткой категории
	HardCategoryBusExpense       T_BusPathExpense,
	-- Расходы автобуса мягкой категории
	SoftCategoryBusExpense       T_BusPathExpense
) -- CREATE TABLE Paths
GO

-- Таблица остановок
CREATE TABLE Stops
(
	-- Название
	Title                 T_NotNullNotEmptyString,
	-- Код маршрута - внешний ключ
	PathCode              T_PathCode
		CONSTRAINT FK_Stops_Paths_PathCode
			FOREIGN KEY
				REFERENCES Paths (Code)
					ON DELETE CASCADE
					ON UPDATE CASCADE,
	-- Код маршрута и название - первичный ключ
	CONSTRAINT PK_Stops_TitlePathCode
		PRIMARY KEY (PathCode, Title),
	-- Номер
	Number                T_PathBusStopNumber,
	-- Название, код маршрута и номер - уникальные
	CONSTRAINT UK_Stops_TitlePathCodeNumber
		UNIQUE (Title, PathCode, Number),
	-- Расстояние до предыдущей
	AfterPreviousDistance T_AfterPathPreviousBusStopDistance
) -- CREATE TABLE Stops
GO

-- Таблица расписания рейсов
CREATE TABLE RunsTimetable
(
	-- Код - первичный ключ
	Code        T_RunCode
		CONSTRAINT PK_RunsTimetable_Code
			PRIMARY KEY,
	-- Код маршрута - внешний ключ
	PathCode    T_PathCode
		-- Ограничение внешнего ключа
		CONSTRAINT FK_RunsTimetable_Paths_PathCode
			FOREIGN KEY
				REFERENCES Paths (Code)
					ON DELETE CASCADE
					ON UPDATE CASCADE,
	-- Категория автобуса
	BusCategory T_BusCategory,
	-- День недели
	[Weekday]   T_Weekday,
	-- Время
	[Time]      T_Time
) -- CREATE TABLE RunsTimetable
GO

-- Таблица выполнения рейсов
CREATE TABLE RunsExecution
(
	-- Дата
	[Date]              T_RunExecutionDate,
	-- Код - внешний ключ
	Code                T_RunCode/*
		CONSTRAINT FK_RunsExecution_RunsTimetable_Code
			FOREIGN KEY
				REFERENCES RunsTimetable
					ON DELETE NO ACTION
					ON UPDATE CASCADE*/,
	-- Дата и код - первичный ключ
	CONSTRAINT PK_RunsExecution_DateCode
		PRIMARY KEY ([Date], Code),
	-- Автомобильный номер автобуса - внешний ключ
	BusCarCode          T_CarCode/*
		CONSTRAINT FK_RunsExecution_Buses_BusCarCode
			FOREIGN KEY
				REFERENCES Buses (CarCode)
					ON DELETE NO ACTION
					ON UPDATE CASCADE*/,
	-- Код водителя - внешний ключ
	DriverCode          T_BusDriverCode/*
		CONSTRAINT FK_RunsExecution_Drivers_DriverCode
			FOREIGN KEY
				REFERENCES Drivers (Code)
					ON DELETE NO ACTION
					ON UPDATE CASCADE*/,
	-- Количество проданных билетов
	SoldTicketsQuantity T_SoldBusTicketsQuantity,
	-- Выручка
	Income              T_RunIncome
) -- CREATE TABLE RunsExecution
GO

-- Таблица продажи билетов
CREATE TABLE TicketsSale
(
	-- Дата
	[Date]          T_RunExecutionDate,
	-- Код рейса
	RunCode         T_RunCode,
	-- Дата и код рейса - внешний ключ
	CONSTRAINT FK_TicketsSale_RunsExecution_DateRunCode
		FOREIGN KEY ([Date], RunCode)
			REFERENCES RunsExecution([Date], Code)
				ON DELETE CASCADE
				ON UPDATE CASCADE,
	-- Номер
	Number          T_BusSeatNumber,
	-- Дата, код рейса и номер - первичный ключ
	CONSTRAINT PK_TicketsSale_DateRunCodeNumber
		PRIMARY KEY ([Date], RunCode, Number),
	-- Признак продажи
	SaleState       T_BusSeatSaleState,
	-- Признак провоза багажа
	LuggagePresence T_BusSeatLuggagePresence
) -- CREATE TABLE TicketsSale
GO
------------------------------------------------------------------------------
-- Таблицы данных результатов поиска

-- Таблица поездок
CREATE TABLE Trips
(
	-- Название остановки
	StopTitle     T_NotNullNotEmptyString,
	-- Название маршрута
	PathTitle     T_NotNullNotEmptyString,
	-- Номер остановки
	StopNumber    T_PathBusStopNumber,
	-- Количество остановок
	StopsQuantity T_PathBusStopNumber,
	-- Расстояние до остановкм
	StopDistance  T_PathLength,
	-- День недели отправления
	RunWeekday    T_Weekday,
	-- Время отправления
	RunTime       T_Time,
	-- Категория автобуса
	BusCategory   T_BusCategory,
	-- Цена билета
	BusTicketCost T_BusTicketCost
) -- CREATE TABLE Trips
GO
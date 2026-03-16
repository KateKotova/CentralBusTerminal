-- Запись данных констант в таблицы-справочники

-- Запись границ типов в таблицу TypesBorders

-- Базовые типы
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('smallint',      '-32768',                            '32767')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('tinyint',       '0',                                   '255')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('bit',           '0',                                     '1')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('decimal',       '-99999999999999999999999999999999999999',
		                           '99999999999999999999999999999999999999')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('smallmoney',    '-214748.3648',                '214748.3647')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('datetime',      '1753/01/01 00:00:00', '9999/12/31 23:59:59')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('smalldatetime', '1900/01/01 00:00:00', '2079/06/06 23:59:59')

-- Основные типы атрибутов таблиц
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_NotNullPositiveTinyint', '0', '255')

-- Таблица Drivers
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_BusDriverCode',          '1',                 '300')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_BusDriverBirthDay',      '1947/01/01', '2079/06/06')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_BusDriverServiceLength', '3',                  '45')

-- Таблица Buses
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_BusSeatsQuantity',  '12',     '70')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_BusUsageStartYear', '1992', '2079')

-- Таблица Directions
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_DirectionCode',       '1',   '30')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_BusDirectionCost1Km', '10', '150')

-- Таблица Paths
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_PathCode',                    '1',            '75')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_PlatformNumber',              '1',            '10')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_PathLength',                  '0.500', '10000.000')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_BusTicketCost',               '7',           '500')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_BusSeatLuggageTransportCost', '3',           '100')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_BusPathExpense',              '84',        '35000')

-- Таблица Stops
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_PathBusStopNumber',                '1',          '30')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_AfterPathPreviousBusStopDistance', '0.500', '100.000')

-- Таблица RunsTimetable
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_RunCode', '1',            '3000')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_Time',    '00:00:00', '23:59:59')

-- Таблица RunsExecution
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_RunExecutionDate',       '1992/01/01', '2079/06/06')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_SoldBusTicketsQuantity', '0',                  '70')
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_RunIncome',              '0',               '25000')

-- Таблица TicketsSale
INSERT INTO TypesBorders ([Name], Minimum, Maximum)
	VALUES ('T_BusSeatNumber', '1', '70')
------------------------------------------------------------------------------
-- Запись масок типов в таблицу TypesMasks

-- Таблица Drivers
INSERT INTO TypesMasks ([Name], Mask)
	VALUES ('T_PersonName', '[А-Я]%')
INSERT INTO TypesMasks ([Name], Mask)
	VALUES ('T_PassportData',
		'[0-9][0-9] [0-9][0-9] [0-9][0-9][0-9][0-9][0-9][0-9]')

-- Таблица Buses
INSERT INTO TypesMasks ([Name], Mask)
	VALUES ('T_CarCode', '[А-Я][А-Я] [0-9][0-9][0-9] [0-9][0-9]')
------------------------------------------------------------------------------
-- Запись значений перечислимых типов в таблицу TypesValues

-- Основные типы атрибутов таблиц
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_ExistenceState', 'не',  1)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_ExistenceState', 'уже', 2)

-- Таблица Buses
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusCategory',      'Газель',      1)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusCategory',      'Жёсткий',     2)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusCategory',      'Мягкий',      3)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusSeatsQuantity', '12',          1)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusSeatsQuantity', '21',          2)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusSeatsQuantity', '23',          3)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusSeatsQuantity', '34',          4)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusSeatsQuantity', '70',          5)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_SanityState',      'Исправен',    1)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_SanityState',      'Не исправен', 2)

-- Таблица Paths
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_PathRangeKind', 'Пригородный',   1)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_PathRangeKind', 'Междугородный', 2)

-- Таблица RunsTimetable
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_Weekday', 'Понедельник', 1)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_Weekday', 'Вторник',     2)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_Weekday', 'Среда',       3)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_Weekday', 'Четверг',     4)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_Weekday', 'Пятница',     5)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_Weekday', 'Суббота',     6)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_Weekday', 'Воскресенье', 7)

-- Таблица TicketsSale
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusSeatSaleState',       'Свободно',   1)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusSeatSaleState',       'Продано',    2)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusSeatLuggagePresence', 'Без багажа', 1)
INSERT INTO TypesValues (TypeName, Value, Number)
	VALUES ('T_BusSeatLuggagePresence', 'С багажом',  2)
------------------------------------------------------------------------------
-- Запись умолчаний типов в таблицу TypesDefaults

-- Таблица Drivers
INSERT INTO TypesDefaults ([Name], [Default])
	VALUES ('T_BusDriverServiceLength',               '3')
-- Таблица Buses
INSERT INTO TypesDefaults ([Name], [Default])
	VALUES ('T_BusCategory',                    'Жёсткий')
INSERT INTO TypesDefaults ([Name], [Default])
	VALUES ('T_SanityState',                   'Исправен')
-- Таблица Paths
INSERT INTO TypesDefaults ([Name], [Default])
	VALUES ('T_PathRangeKind',              'Пригородный')
INSERT INTO TypesDefaults ([Name], [Default])
	VALUES ('T_PlatformNumber',                       '1')
-- Таблица Stops
INSERT INTO TypesDefaults ([Name], [Default])
	VALUES ('T_AfterPathPreviousBusStopDistance', '0.500')
-- Таблица RunsTimetable
INSERT INTO TypesDefaults ([Name], [Default])
	VALUES ('T_Weekday',                    'Понедельник')
INSERT INTO TypesDefaults ([Name], [Default])
	VALUES ('T_Time',                          '07:00:00')
-- Таблица TicketSale
INSERT INTO TypesDefaults ([Name], [Default])
	VALUES ('T_BusSeatSaleState',              'Свободно')
INSERT INTO TypesDefaults ([Name], [Default])
	VALUES ('T_BusSeatLuggagePresence',      'Без багажа')
------------------------------------------------------------------------------
-- Запись заголовков таблиц в таблицу TablesCaptions

-- Таблицы-справочники данных констант
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('TypesBorders',
		'границы диапазонов типов',    'границ диапазонов типов',
		'границы диапазона типа',      'границ диапазона типа')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('TypesMasks',     'маски типов',     'масок типов',
		                        'маска типа',      'маски типа')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('TypesValues',
		'значения перечислимых типов', 'значений перечислимых типов',
		'значение перечислимого типа', 'значения перечислимого типа')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('TypesDefaults',  'умолчания типов', 'умолчаний типов',
		                        'умолчание типа',  'умолчания типа')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('TablesCaptions', 'заголовки типов', 'заголовков типов',
		                        'заголовок типа',  'заголовка типа')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('TablesAttributesCaptions',
		'заголовки атрибутов типов',   'заголовков атрибутов типов',
		'заголовок атрибута типа',     'заголовка атрибута типа')

-- Таблицы данных центрального автовокзала
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('Drivers', 'водители',  'водителей', 'водитель',  'водителя')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('Buses',   'автобусы',  'автобусов', 'автобус',   'автобуса')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('Directions',    'направления',       'направлений',
		                       'направление',       'направления')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('Paths',   'маршруты',  'маршрутов', 'маршрут',   'маршрута')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('Stops',   'остановки', 'остановок', 'остановка', 'остановки')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('RunsTimetable', 'расписание рейсов', 'расписания рейсов',
		                       'расписание рейса',  'расписания рейса')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('RunsExecution', 'выполнение рейсов', 'выполнения рейсов',
		                       'выполнение рейса',  'выполнения рейса')
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('TicketsSale',   'продажа билетов',   'продажи билетов',
		                       'продажа билета',    'продажи билета')

-- Таблицы данных результатов поиска
INSERT INTO TablesCaptions ([Name], NominitiveCaseCaption,
		GenitiveCaseCaption, NominitiveCaseRowCaption, GenitiveCaseRowCaption)
	VALUES ('Trips', 'поездки', 'поездок', 'поездка', 'поездки')
------------------------------------------------------------------------------
-- Запись заголовков атрибутов таблиц в таблицу TablesAttributesCaptions

-- Таблицы-справочники данных констант

-- Таблица-справочник границ типов
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TypesBorders', 'Name', 'название', 'названия')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TypesBorders', 'Minimum',
		'миниамльное значение',  'миниамльного значения')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TypesBorders', 'Maximum',
		'максимальное значение', 'максимального значения')

-- Таблица-справочник масок типов
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TypesMasks', 'Name', 'название', 'названия')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TypesMasks', 'Mask', 'маска',    'маски')

-- Таблица-справочник значений перечислимых типов
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TypesValues', 'TypeName', 'название типа', 'названия типа')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TypesValues', 'Value',    'значение',      'значения')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TypesValues', 'Number',   'номер',         'номера')

-- Таблица-справочник умолчаний типов
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TypesDefaults', 'Name',    'название',  'названия')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TypesDefaults', 'Default', 'умолчание', 'умолчания')

-- Таблица-справочник заголовков таблиц
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TablesCaptions', 'TypeName', 'название', 'названия')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TablesCaptions', 'NominitiveCaseCaption',
		'заголовок в именительном падеже', 'заголовка в именительном падеже')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TablesCaptions', 'GenitiveCaseCaption',
		'заголовок в родительном падеже',  'заголовка в родительном падеже')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TablesCaptions', 'NominitiveCaseRowCaption',
		'заголовок строки в именительном падеже',
		'заголовка строки в именительном падеже')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TablesCaptions', 'GenitiveCaseRowCaption',
		'заголовок строки в родительном падеже',
		'заголовка строки в родительном падеже')

-- Таблица-справочник заголовков таблиц
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TablesAttributesCaptions', 'TableName',
		'название таблицы',                'названия таблицы')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TablesAttributesCaptions', 'Name', 'название', 'названия')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TablesAttributesCaptions', 'NominitiveCaseCaption',
		'заголовок в именительном падеже', 'заголовка в именительном падеже')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TablesAttributesCaptions', 'GenitiveCaseCaption',
		'заголовок в родительном падеже',  'заголовка в родительном падеже')

-- Таблицы данных центрального автовокзала

-- Таблица водителей автобусов
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Drivers', 'Code',           'код',           'кода')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Drivers', 'Surname',        'фамилия',       'фамилии')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Drivers', 'FirstName',      'имя',           'имени')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Drivers', 'PatronymicName', 'отчество',      'отчества')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Drivers', 'PassportData',
		'паспортные данные', 'паспортных данных')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Drivers', 'BirthDay',       'дата рождения', 'даты рождения')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Drivers', 'ServiceLength',  'стаж',          'стажа')

-- Таблица автобусов
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Buses', 'CarCode',     'автомобильный номер', 'автомобильного номера')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Buses', 'Category',    'категория',          'категории')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Buses', 'SeatsQuantity',
		'количество пассажирских мест', 'количества пассажирских мест')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Buses', 'UsageStartYear',
		'год начала эксплуатации',      'года начала эксплуатации')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Buses', 'SanityState', 'исправность',         'исправности')

-- Таблица направлений
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Directions', 'Code',  'код',      'кода')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Directions', 'Title', 'название', 'названия')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Directions', 'GazelleCategoryBusCost1Km',
		'стоимость 1 км для газели', 'стоимости 1 км для газели')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Directions', 'HardCategoryBusCost1Km',
		'стоимость 1 км для автобуса жёсткой категории',
		'стоимости 1 км для автобуса жёсткой категории')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Directions', 'SoftCategoryBusCost1Km',
		'стоимость 1 км для автобуса мягкой категории',
		'стоимости 1 км для автобуса мягкой категории')

-- Таблица маршрутов
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'Code',           'код',             'кода')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'Title',          'название',        'названия')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'DirectionCode',  'код направления', 'кода направления')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'FinalPoint',     'конечный пункт',  'конечного пункта')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'RangeKind',      'дальность',       'дальности')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'PlatformNumber', 'номер платформы', 'номера платформы')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'Length',         'длина пути',      'длины пути')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'GazelleCategoryBusTicketCost',
		'цена билета на газель',    'цены билета на газель')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'HardCategoryBusTicketCost',
		'цена билета на автобус жёсткой категории',
		'цены билета на автобус жёсткой категории')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'SoftCategoryBusTicketCost',
		'цена билета на автобус мягкой категории',
		'цены билета на автобус мягкой категории')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'SeatLuggageTransportCost',
		'стоимость провоза багажа', 'стоимости провоза багажа')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'GazelleCategoryBusExpense',
		'расходы газели',           'расходов газели')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'HardCategoryBusExpense',
		'расходы автобуса жёсткой категории',
		'расходов автобуса жёсткой категории')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Paths', 'SoftCategoryBusExpense',
		'расходы автобуса мягкой категории',
		'расходов автобуса мягкой категории')

-- Таблица остановок
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Stops', 'Title',    'название',     'названия')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Stops', 'PathCode', 'код маршрута', 'кода маршрута')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Stops', 'Number',   'номер',        'номера')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Stops', 'AfterPreviousDistance',
		'расстояние до предыдущей', 'расстояния до предыдущей')

-- Таблица расписания рейсов
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('RunsTimetable', 'Code',     'код',          'кода')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('RunsTimetable', 'PathCode', 'код маршрута', 'кода маршрута')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('RunsTimetable', 'BusCategory',
		'категория автобуса', 'категории автобуса')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('RunsTimetable', 'Weekday',  'день недели',  'дня недели')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('RunsTimetable', 'Time',     'время',        'времени')

-- Таблица выполнения рейсов
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('RunsExecution', 'Date',       'дата',         'даты')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('RunsExecution', 'Code',       'код',          'кода')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('RunsExecution', 'BusCarCode',
		'автомобильный номер автобуса', 'автомобильного номера автобуса')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('RunsExecution', 'DriverCode', 'код водителя', 'кода водителя')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('RunsExecution', 'SoldTicketsQuantity',
		'количество проданных билетов', 'количества проданных билетов')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('RunsExecution', 'Income',     'выручка',      'выручки')

-- Таблица продажи билетов
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TicketsSale', 'Date',      'дата',            'даты')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TicketsSale', 'RunCode',   'код рейса',       'кода рейса')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TicketsSale', 'Number',    'номер',           'номера')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TicketsSale', 'SaleState', 'признак продажи', 'признака продажи')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('TicketsSale', 'LuggagePresence',
		'признак провоза багажа', 'признака провоза багажа')

-- Таблицы данных результатов поиска

-- Таблица поездок
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Trips', 'StopTitle',   'название остановки', 'названия остановки')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Trips', 'PathTitle',   'название рейса',     'названия рейса')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Trips', 'StopNumber',  'номер остановки',    'номера остановки')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Trips', 'StopsQuantity',
		'количество остановок',    'количества остановок')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Trips', 'StopDistance',
		'расстояние до остановки', 'расстояния до остановки')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Trips', 'RunWeekday',  'день недели',        'дня недели')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Trips', 'RunTime',     'время',              'времени')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Trips', 'BusCategory', 'категория автобуса', 'категории автобуса')
INSERT INTO TablesAttributesCaptions (TableName, [Name],
		NominitiveCaseCaption, GenitiveCaseCaption)
	VALUES ('Trips', 'BusTicketCost',
		'цена билет на автобус',   'цены билет на автобус')
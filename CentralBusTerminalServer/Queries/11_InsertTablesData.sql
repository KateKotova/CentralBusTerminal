--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
-- З A П И C Ь   Д A Н Н Ы X   B   T A Б Л И Ц Ы
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

-- Зaпиcь дaнныx в тaблицы-cпpaвoчники

-- Зaпиcь дaнныx в тaблицу-cпpaвoчник cooбщeний oб oшибкax
INSERT INTO ErrorsMessages ( Message ) -- 1
VALUES ( 'oшибкa дoбaвлeния зaпиcи' )
INSERT INTO ErrorsMessages ( Message ) -- 2
VALUES ( 'oшибкa oбнoвлeния зaпиcи' )
INSERT INTO ErrorsMessages ( Message ) -- 3
VALUES ( 'oшибкa удaлeния зaпиcи' )
INSERT INTO ErrorsMessages ( Message ) -- 4
VALUES ( 'состояние активности записи является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 5
VALUES ( 'состояние активности записи не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 6
VALUES ( 'прежняя категория автобуса является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 7
VALUES ( 'категория автобуса является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 8
VALUES ( 'прежняя категория автобуса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 9
VALUES ( 'категория автобуса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 10
VALUES ( 'состояние исправности автобуса является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 11
VALUES ( 'состояние исправности автобуса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 12
VALUES ( 'дальность маршрута является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 13
VALUES ( 'дальность маршрута не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 14
VALUES ( 'день недели является пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 15
VALUES ( 'день недели не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 16
VALUES ( 'признак продажи билета на место в автобусе является ' +
         'пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 17
VALUES ( 'признак продажи билета на место в автобусе не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 18
VALUES ( 'признак провоза багажа пасажиром в автобусе является ' +
         'пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 19
VALUES ( 'признак провоза багажа пасажиром в автобусе не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 20
VALUES ( 'прежние паспортные данные водителя автобуса являются ' +
         'пуcтoй cтpoкoй или состоят из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 21
VALUES ( 'паспортные данные водителя автобуса являются ' +
         'пуcтoй cтpoкoй или состоят из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 22
VALUES ( 'прежние паспортные данные водителя автобуса '              +
         'не состоят из трёх групп символов, отделённых пробелами: ' +
         'две цифры и две цифры - серия и шесть цифр - номер' )
INSERT INTO ErrorsMessages ( Message ) -- 23
VALUES ( 'паспортные данные водителя автобуса '              +
         'не состоят из трёх групп символов, отделённых пробелами: ' +
         'две цифры и две цифры - серия и шесть цифр - номер' )
INSERT INTO ErrorsMessages ( Message ) -- 24
VALUES ( 'прежние паспортные данные водителя автобуса не существуют' )
INSERT INTO ErrorsMessages ( Message ) -- 25
VALUES ( 'паспортные данные водителя автобуса не существуют' )
INSERT INTO ErrorsMessages ( Message ) -- 26
VALUES ( 'прежние паспортные данные водителя автобуса уже существуют' )
INSERT INTO ErrorsMessages ( Message ) -- 27
VALUES ( 'паспортные данные водителя автобуса уже существуют' )
INSERT INTO ErrorsMessages ( Message ) -- 28
VALUES ( 'прежнее количество пассажирских мест автобуса не определено' )
INSERT INTO ErrorsMessages ( Message ) -- 29
VALUES ( 'количество пассажирских мест автобуса не определено' )
INSERT INTO ErrorsMessages ( Message ) -- 30
VALUES ( 'прежнее количество пассажирских мест автобуса ' +
         'не является положительным числом' )
INSERT INTO ErrorsMessages ( Message ) -- 31
VALUES ( 'количество пассажирских мест автобуса ' +
         'не является положительным числом' )
INSERT INTO ErrorsMessages ( Message ) -- 32
VALUES ( 'прежний набор категории автобуса ' +
         'и количества пассажирских мест автобуса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 33
VALUES ( 'набор категории автобуса ' +
         'и количества пассажирских мест автобуса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 34
VALUES ( 'прежний набор категории автобуса ' +
         'и количества пассажирских мест автобуса уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 35
VALUES ( 'набор категории автобуса ' +
         'и количества пассажирских мест автобуса уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 36
VALUES ( 'прежний автомобильный номер автобуса является ' +
         'пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 37
VALUES ( 'автомобильный номер автобуса является ' +
         'пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 38
VALUES ( 'прежний автомобильный номер автобуса '                     +
         'не состоит из трёх групп символов, отделённых пробелами: ' +
         'две заглавные русские буквы, три цифры и две цифры' )
INSERT INTO ErrorsMessages ( Message ) -- 39
VALUES ( 'автомобильный номер автобуса '                             +
         'не состоит из трёх групп символов, отделённых пробелами: ' +
         'две заглавные русские буквы, три цифры и две цифры' )
INSERT INTO ErrorsMessages ( Message ) -- 40
VALUES ( 'прежний автомобильный номер автобуса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 41
VALUES ( 'автомобильный номер автобуса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 42
VALUES ( 'прежний автомобильный номер автобуса уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 43
VALUES ( 'автомобильный номер автобуса уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 44
VALUES ( 'прежнее направление является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 45
VALUES ( 'направление является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 46
VALUES ( 'прежнее направление не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 47
VALUES ( 'направление не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 48
VALUES ( 'прежнее направление уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 49
VALUES ( 'направление уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 50
VALUES ( 'прежний набор направления и планировки автобуса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 51
VALUES ( 'набор направления и планировки автобуса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 52
VALUES ( 'прежний набор направления и планировки автобуса уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 53
VALUES ( 'набор направления и планировки автобуса уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 54
VALUES ( 'прежний маршрут является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 55
VALUES ( 'маршрут является пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 56
VALUES ( 'прежний маршрут не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 57
VALUES ( 'маршрут не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 58
VALUES ( 'прежний маршрут уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 59
VALUES ( 'маршрут уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 60
VALUES ( 'прежний набор маршрута и категории автобуса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 61
VALUES ( 'набор маршрута и категории автобуса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 62
VALUES ( 'прежний набор маршрута и категории автобуса уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 63
VALUES ( 'набор маршрута и категории автобуса уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 64
VALUES ( 'прежняя остановка является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 65
VALUES ( 'остановка является пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 66
VALUES ( 'прежний набор остановки и маршрута не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 67
VALUES ( 'набор остановки и маршрута не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 68
VALUES ( 'прежний набор остановки и маршрута уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 69
VALUES ( 'набор остановки и маршрута уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 70
VALUES ( 'прежние часы расписания рейса не определены' )
INSERT INTO ErrorsMessages ( Message ) -- 71
VALUES ( 'часы расписания рейса не определены' )
INSERT INTO ErrorsMessages ( Message ) -- 72
VALUES ( 'прежние минуты расписания рейса не определены' )
INSERT INTO ErrorsMessages ( Message ) -- 73
VALUES ( 'минуты расписания рейса не определены' )
INSERT INTO ErrorsMessages ( Message ) -- 74
VALUES ( 'некорректное прежнее время расписания рейса' )
INSERT INTO ErrorsMessages ( Message ) -- 75
VALUES ( 'некорректное время расписания рейса' )
INSERT INTO ErrorsMessages ( Message ) -- 76
VALUES ( 'прежний набор маршрута, категории автобуса, дня недели ' +
         'и времени расписания рейса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 77
VALUES ( 'набор маршрута, категории автобуса, дня недели ' +
         'и времени расписания рейса не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 78
VALUES ( 'прежний набор маршрута, категории автобуса, дня недели ' +
         'и времени расписания рейса уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 79
VALUES ( 'набор маршрута, категории автобуса, дня недели ' +
         'и времени расписания рейса уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 80
VALUES ( 'прежний год выполнения рейса не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 81
VALUES ( 'год выполнения рейса не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 82
VALUES ( 'прежний месяц выполнения рейса не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 83
VALUES ( 'месяц выполнения рейса не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 84
VALUES ( 'прежний день выполнения рейса не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 85
VALUES ( 'день выполнения рейса не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 86
VALUES ( 'некорректная прежняя дата выполнения рейса' )
INSERT INTO ErrorsMessages ( Message ) -- 87
VALUES ( 'некорректная дата выполнения рейса' )
INSERT INTO ErrorsMessages ( Message ) -- 88
VALUES ( 'прежняя дата выполнения рейса позже текущей' )
INSERT INTO ErrorsMessages ( Message ) -- 88
VALUES ( 'дата выполнения рейса позже текущей' )
INSERT INTO ErrorsMessages ( Message ) -- 90
VALUES ( 'день недели прежней даты выполнения рейса ' +
         'не соответствует прежнему дню недели рейса по расписанию' )
INSERT INTO ErrorsMessages ( Message ) -- 91
VALUES ( 'день недели даты выполнения рейса ' +
         'не соответствует дню недели рейса по расписанию' )
INSERT INTO ErrorsMessages ( Message ) -- 92
VALUES ( 'категория прежнего автобуса выполнения рейса ' +
         'не соответствует прежней категории автобуса рейса по расписанию' )
INSERT INTO ErrorsMessages ( Message ) -- 93
VALUES ( 'категория автобуса выполнения рейса ' +
         'не соответствует категории автобуса рейса по расписанию' )
INSERT INTO ErrorsMessages ( Message ) -- 94
VALUES ( 'прежнее расписание рейса не активно' )
INSERT INTO ErrorsMessages ( Message ) -- 95
VALUES ( 'расписание рейса не активно' )
INSERT INTO ErrorsMessages ( Message ) -- 96
VALUES ( 'прежний автобус не автивен' )
INSERT INTO ErrorsMessages ( Message ) -- 97
VALUES ( 'автобус не автивен' )
INSERT INTO ErrorsMessages ( Message ) -- 98
VALUES ( 'прежний автобус не исправен' )
INSERT INTO ErrorsMessages ( Message ) -- 99
VALUES ( 'автобус не исправен' )
INSERT INTO ErrorsMessages ( Message ) -- 100
VALUES ( 'прежний водитель не автивен' )
INSERT INTO ErrorsMessages ( Message ) -- 101
VALUES ( 'водитель не автивен' )
INSERT INTO ErrorsMessages ( Message ) -- 102
VALUES ( 'прежний час выполнения рейса позже текущего' )
INSERT INTO ErrorsMessages ( Message ) -- 103
VALUES ( 'час выполнения рейса позже текущего' )
INSERT INTO ErrorsMessages ( Message ) -- 104
VALUES ( 'прежние минуты выполнения рейса позже текущих' )
INSERT INTO ErrorsMessages ( Message ) -- 105
VALUES ( 'минуты выполнения рейса позже текущих' )
INSERT INTO ErrorsMessages ( Message ) -- 106
VALUES ( 'прежний набор даты выполнения рейса, расписания рейса, ' +
         'автобуса и водителя не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 107
VALUES ( 'набор даты выполнения рейса, расписания рейса, ' +
         'автобуса и водителя не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 108
VALUES ( 'прежний набор даты выполнения рейса, расписания рейса, ' +
         'автобуса и водителя уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 109
VALUES ( 'набор даты выполнения рейса, расписания рейса, ' +
         'автобуса и водителя уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 110
VALUES ( 'прежний номер места в автобусе не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 111
VALUES ( 'номер места в автобусе не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 112
VALUES ( 'прежний номер места в автобусе не является положительным числом' )
INSERT INTO ErrorsMessages ( Message ) -- 113
VALUES ( 'номер места в автобусе не является положительным числом' )
INSERT INTO ErrorsMessages ( Message ) -- 114
VALUES ( 'прежний номер места в автобусе превышает максимальный' )
INSERT INTO ErrorsMessages ( Message ) -- 115
VALUES ( 'номер места в автобусе превышает максимальный' )
INSERT INTO ErrorsMessages ( Message ) -- 116
VALUES ( 'прежний набор выполнения рейса и номера места в автобусе ' +
         'не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 117
VALUES ( 'набор выполнения рейса и номера места в автобусе не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 118
VALUES ( 'прежний набор выполнения рейса и номера места в автобусе ' +
         'уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 119
VALUES ( 'набор выполнения рейса и номера места в автобусе уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 120
VALUES ( 'фамилия водителя автобуса являeтcя пуcтoй cтpoкoй ' +
         'или cocтoит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 121
VALUES ( 'фамилия водителя автобуса не начинается с заглавной русской буквы' )
INSERT INTO ErrorsMessages ( Message ) -- 122
VALUES ( 'имя водителя автобуса являeтcя пуcтoй cтpoкoй ' +
         'или cocтoит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 123
VALUES ( 'имя водителя автобуса не начинается с заглавной русской буквы' )
INSERT INTO ErrorsMessages ( Message ) -- 124
VALUES ( 'отчество водителя автобуса являeтcя пуcтoй cтpoкoй ' +
         'или cocтoит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 125
VALUES ( 'отчество водителя автобуса не начинается ' +
         'с заглавной русской буквы' )
INSERT INTO ErrorsMessages ( Message ) -- 126
VALUES ( 'год рождения водителя автобуса не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 127
VALUES ( 'месяц рождения водителя автобуса не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 128
VALUES ( 'день рождения водителя автобуса не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 129
VALUES ( 'некорректная дата рождения водителя автобуса' )
INSERT INTO ErrorsMessages ( Message ) -- 130
VALUES ( 'возраст водителя автобуса находится вне диапазона ' +
         'от 21 года до 60 лет' )
INSERT INTO ErrorsMessages ( Message ) -- 131
VALUES ( 'стаж водителя автобуса находится вне диапазона от 3 до 45 лет' )
INSERT INTO ErrorsMessages ( Message ) -- 132
VALUES ( 'срок эксплуатации автобуса находится вне диапазона от 0 до 15 лет' )
INSERT INTO ErrorsMessages ( Message ) -- 133
VALUES ( 'cтоимость 1 км направления находится вне диапазона ' +
         'от 0.01 до 150 денежных единиц' )
INSERT INTO ErrorsMessages ( Message ) -- 134
VALUES ( 'номер платформы находится вне диапазона от 1 до 10' )
INSERT INTO ErrorsMessages ( Message ) -- 135
VALUES ( 'цена билета на автобус находится вне диапазона ' +
         'от 7 до 500 денежных единиц' )
INSERT INTO ErrorsMessages ( Message ) -- 136
VALUES ( 'cтоимость провоза багажа в автобусе находится вне диапазона ' +
         'от 3 до 100 денежных единиц' )
INSERT INTO ErrorsMessages ( Message ) -- 137
VALUES ( 'номер остановки в пределах маршрута не определён' )
INSERT INTO ErrorsMessages ( Message ) -- 138
VALUES ( 'номер остановки в пределах маршрута находится вне диапазона ' +
         'от 1 до 30' )
INSERT INTO ErrorsMessages ( Message ) -- 139
VALUES ( 'расстояние до предыдущей остановки находится вне диапазона ' +
         'от 0.500 до 100.000 км' )
INSERT INTO ErrorsMessages ( Message ) -- 140
VALUES ( 'прежний день недели является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 141
VALUES ( 'прежний день недели не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 142
VALUES ( 'прежняя карта является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 143
VALUES ( 'карта является пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 144
VALUES ( 'прежняя карта не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 145
VALUES ( 'карта не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 146
VALUES ( 'прежняя карта уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 147
VALUES ( 'карта уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 148
VALUES ( 'прежний набор маршрута и карты не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 149
VALUES ( 'набор маршрута и карты не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 150
VALUES ( 'прежний набор маршрута и карты уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 151
VALUES ( 'набор маршрута и карты уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 152
VALUES ( 'прежний набор карты маршрута и остановки не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 153
VALUES ( 'набор карты маршрута и остановки не существует' )
INSERT INTO ErrorsMessages ( Message ) -- 154
VALUES ( 'прежний набор карты маршрута и остановки уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 155
VALUES ( 'набор карты маршрута и остановки уже существует' )
INSERT INTO ErrorsMessages ( Message ) -- 156
VALUES ( 'oшибкa поиска остановок' )
INSERT INTO ErrorsMessages ( Message ) -- 157
VALUES ( 'подстрока названия остановки является пуcтoй cтpoкoй ' +
         'или состоит из oдниx пpoбeлoв' )
INSERT INTO ErrorsMessages ( Message ) -- 158
VALUES ( 'oшибкa поиска остановок маршрута' )
INSERT INTO ErrorsMessages ( Message ) -- 159
VALUES ( 'oшибкa поиска карт маршрута' )
INSERT INTO ErrorsMessages ( Message ) -- 160
VALUES ( 'oшибкa поиска координат остановок карты маршрута' )

-- Зaпиcь дaнныx в тaблицу-cпpaвoчник состояний активностей записей
INSERT INTO RecordsActivitiesStates ( [Name] ) -- 1
VALUES ( 'Активно' )
INSERT INTO RecordsActivitiesStates ( [Name] ) -- 2
VALUES ( 'Неактивно' )

-- Зaпиcь дaнныx в тaблицу-cпpaвoчник категирий автобусов
INSERT INTO BusesCategories ( [Name] ) -- 1
VALUES ( 'Жёсткий' )
INSERT INTO BusesCategories ( [Name] ) -- 2
VALUES ( 'Мягкий' )
INSERT INTO BusesCategories ( [Name] ) -- 3
VALUES ( 'Газель' )

-- Зaпиcь дaнныx в тaблицу-cпpaвoчник состояний исправностей автобусов
INSERT INTO BusesSanitiesStates ( [Name] ) -- 1
VALUES ( 'Исправен' )
INSERT INTO BusesSanitiesStates ( [Name] ) -- 2
VALUES ( 'Не исправен' )

-- Зaпиcь дaнныx в тaблицу-cпpaвoчник дальностей маршрутов
INSERT INTO PathsRangesKinds ( [Name] ) -- 1
VALUES ( 'Пригородный' )
INSERT INTO PathsRangesKinds ( [Name] ) -- 2
VALUES ( 'Междугородный' )

-- Зaпиcь дaнныx в тaблицу-cпpaвoчник дней недели
INSERT INTO Weekdays ( [Name] ) -- 1
VALUES ( 'Понедельник' )
INSERT INTO Weekdays ( [Name] ) -- 2
VALUES ( 'Вторник' )
INSERT INTO Weekdays ( [Name] ) -- 3
VALUES ( 'Среда' )
INSERT INTO Weekdays ( [Name] ) -- 4
VALUES ( 'Четверг' )
INSERT INTO Weekdays ( [Name] ) -- 5
VALUES ( 'Пятница' )
INSERT INTO Weekdays ( [Name] ) -- 6
VALUES ( 'Суббота' )
INSERT INTO Weekdays ( [Name] ) -- 7
VALUES ( 'Воскресенье' )

-- Зaпиcь дaнныx в тaблицу-cпpaвoчник признаков продаж билетов
-- на места в автобусах
INSERT INTO BusesSeatsSalesStates ( [Name] ) -- 1
VALUES ( 'Свободно' )
INSERT INTO BusesSeatsSalesStates ( [Name] ) -- 2
VALUES ( 'Продано' )

-- Зaпиcь дaнныx в тaблицу-cпpaвoчник признаков провозов багажей
-- пасажирами в автобусах
INSERT INTO BusesSeatsLuggagesPresences ( [Name] ) -- 1
VALUES ( 'Без багажа' )
INSERT INTO BusesSeatsLuggagesPresences ( [Name] ) -- 2
VALUES ( 'С багажом' )
------------------------------------------------------------------------------
-- Зaпиcь дaнныx в тaблицы фaктичecкиx дaнныx

-- Зaпиcь дaнныx в тaблицу водителей автобусов
INSERT INTO Drivers ( Surname,      FirstName, PatronymicName,
	                    PassportData, BirthDay,  ServiceLength   ) -- 1
VALUES ( 'Уговорский',   'Авакум',     'Сирафимович',
	       '12 34 567890', '1963/09/12', 22 )
INSERT INTO Drivers ( Surname,      FirstName, PatronymicName,
	                    PassportData, BirthDay, ServiceLength    ) -- 2
VALUES ( 'Крючков',      'Тимофей',     'Спиридонович',
	       '09 87 654321', '1977/07/07',  5 )
INSERT INTO Drivers ( Surname,      FirstName, PatronymicName,
	                    PassportData, BirthDay, ServiceLength   ) -- 3
VALUES ( 'Сафронов',     'Осип',        'Захарович',
	       '13 24 354657', '1972/12/21',  7 )

-- Зaпиcь дaнныx в тaблицу-cпpaвoчник планировок автобусов
INSERT INTO BusesPlannings ( CategoryID, SeatsQuantity ) -- 1
VALUES ( 1, 21 )
INSERT INTO BusesPlannings ( CategoryID, SeatsQuantity ) -- 2
VALUES ( 1, 23 )
INSERT INTO BusesPlannings ( CategoryID, SeatsQuantity ) -- 3
VALUES ( 2, 34 )
INSERT INTO BusesPlannings ( CategoryID, SeatsQuantity ) -- 4
VALUES ( 2, 70 )
INSERT INTO BusesPlannings ( CategoryID, SeatsQuantity ) -- 5
VALUES ( 3, 12 )

-- Зaпиcь дaнныx в тaблицу автобусов
INSERT INTO Buses ( CarCode, PlanningID, UsageStartYear, IsFaultFree )
VALUES ( 'АБ 123 45', 5, 2002, 1 ) -- 1
INSERT INTO Buses ( CarCode, PlanningID, UsageStartYear, IsFaultFree )
VALUES ( 'ЦД 678 90', 5, 1998, 0 ) -- 2
INSERT INTO Buses ( CarCode, PlanningID, UsageStartYear, IsFaultFree )
VALUES ( 'ВВ 111 22', 1, 1995, 1 ) -- 3
INSERT INTO Buses ( CarCode, PlanningID, UsageStartYear, IsFaultFree )
VALUES ( 'КУ 321 54', 2, 1997, 1 ) -- 4
INSERT INTO Buses ( CarCode, PlanningID, UsageStartYear, IsFaultFree )
VALUES ( 'МУ 000 11', 1, 1999, 0 ) -- 5
INSERT INTO Buses ( CarCode, PlanningID, UsageStartYear, IsFaultFree )
VALUES ( 'ЫЫ 777 88', 3, 2003, 1 ) -- 6
INSERT INTO Buses ( CarCode, PlanningID, UsageStartYear, IsFaultFree )
VALUES ( 'АО 432 10', 4, 2006, 1 ) -- 7
INSERT INTO Buses ( CarCode, PlanningID, UsageStartYear, IsFaultFree )
VALUES ( 'ЭЪ 680 42', 3, 2001, 0 ) -- 8

-- Зaпиcь дaнныx в тaблицу направлений

-- Направления пригородных маршрутов
INSERT INTO Directions ( [Name] ) -- 1
VALUES ( 'Шиловский район' )
INSERT INTO Directions ( [Name] ) -- 2
VALUES ( 'Скопинский район' )
INSERT INTO Directions ( [Name] ) -- 3
VALUES ( 'Путятинский район' )
INSERT INTO Directions ( [Name] ) -- 4
VALUES ( 'Рыбновский район' )
INSERT INTO Directions ( [Name] ) -- 5
VALUES ( 'Захаровский район' )
INSERT INTO Directions ( [Name] ) -- 6
VALUES ( 'Рязанский район' )
INSERT INTO Directions ( [Name] ) -- 7
VALUES ( 'Старожиловский район' )
INSERT INTO Directions ( [Name] ) -- 8
VALUES ( 'Сараевский район' )

-- Направления междугородных маршрутов
INSERT INTO Directions ( [Name] ) -- 9
VALUES ( 'Владимирская область' )
INSERT INTO Directions ( [Name] ) -- 10
VALUES ( 'Нижегородская область' )
INSERT INTO Directions ( [Name] ) -- 11
VALUES ( 'Московская область' )
INSERT INTO Directions ( [Name] ) -- 12
VALUES ( 'Ивановская область' )
INSERT INTO Directions ( [Name] ) -- 13
VALUES ( 'Рязанская область' )
INSERT INTO Directions ( [Name] ) -- 14
VALUES ( 'Тульская область' )
INSERT INTO Directions ( [Name] ) -- 15
VALUES ( 'Орловская область' )
INSERT INTO Directions ( [Name] ) -- 16
VALUES ( 'Липецкая область' )
INSERT INTO Directions ( [Name] ) -- 17
VALUES ( 'Тамбовская область' )
INSERT INTO Directions ( [Name] ) -- 18
VALUES ( 'Саранская область' )

-- Зaпиcь дaнныx в тaблицу стоимостей одного километра направлений

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 1
VALUES (  1, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 2
VALUES (  1, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 3
VALUES (  1, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 4
VALUES (  1, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 5
VALUES (  1, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 6
VALUES (  2, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 7
VALUES (  2, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 8
VALUES (  2, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 9
VALUES (  2, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 10
VALUES (  2, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 11
VALUES (  3, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 12
VALUES (  3, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 13
VALUES (  3, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 14
VALUES (  3, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 15
VALUES (  3, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 16
VALUES (  4, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 17
VALUES (  4, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 18
VALUES (  4, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 19
VALUES (  4, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 20
VALUES (  4, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 21
VALUES (  5, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 22
VALUES (  5, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 23
VALUES (  5, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 24
VALUES (  5, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 25
VALUES (  5, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 26
VALUES (  6, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 27
VALUES (  6, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 28
VALUES (  6, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 29
VALUES (  6, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 30
VALUES (  6, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 31
VALUES (  7, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 32
VALUES (  7, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 33
VALUES (  7, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 34
VALUES (  7, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 35
VALUES (  7, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 36
VALUES (  8, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 37
VALUES (  8, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 38
VALUES (  8, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 39
VALUES (  8, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 40
VALUES (  8, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 41
VALUES (  9, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 42
VALUES (  9, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 43
VALUES (  9, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 44
VALUES (  9, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 45
VALUES (  9, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 46
VALUES ( 10, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 47
VALUES ( 10, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 48
VALUES ( 10, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 49
VALUES ( 10, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 40
VALUES ( 10, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 51
VALUES ( 11, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 52
VALUES ( 11, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 53
VALUES ( 11, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 54
VALUES ( 11, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 55
VALUES ( 11, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 56
VALUES ( 12, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 57
VALUES ( 12, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 58
VALUES ( 12, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 59
VALUES ( 12, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 60
VALUES ( 12, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 61
VALUES ( 13, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 62
VALUES ( 13, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 63
VALUES ( 13, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 64
VALUES ( 13, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 65
VALUES ( 13, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 66
VALUES ( 14, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 67
VALUES ( 14, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 68
VALUES ( 14, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 69
VALUES ( 14, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 70
VALUES ( 14, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 71
VALUES ( 15, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 72
VALUES ( 15, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 73
VALUES ( 15, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 74
VALUES ( 15, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 75
VALUES ( 15, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 76
VALUES ( 16, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 77
VALUES ( 16, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 78
VALUES ( 16, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 79
VALUES ( 16, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 80
VALUES ( 16, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 81
VALUES ( 17, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 82
VALUES ( 17, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 83
VALUES ( 17, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 84
VALUES ( 17, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 85
VALUES ( 17, 5, 2.3790 )

INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 86
VALUES ( 18, 1, 2.8731 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 87
VALUES ( 18, 2, 2.9280 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 88
VALUES ( 18, 3, 5.4900 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 89
VALUES ( 18, 4, 6.4050 )
INSERT INTO DirectionsOneKmCosts ( DirectionID, BusPlanningID,
	DirectionOneKmCost ) -- 90
VALUES ( 18, 5, 2.3790 )

-- Зaпиcь дaнныx в тaблицу маршрутов

-- Запись пригородных маршрутов
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 1
VALUES ( 'Константиново',            1, 3 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 2
VALUES ( 'Высокое',                  2, 1 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 3
VALUES ( 'Рыбхоз',                   3, 4 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 4
VALUES ( 'Батурино',                 4, 4 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 5
VALUES ( 'Захарово',                 5, 1 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 6
VALUES ( 'Альяшево',                 5, 2 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 7
VALUES ( 'Зимино',                   5, 2 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 8
VALUES ( 'Вакино',                   4, 3 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 9
VALUES ( 'Костино',                  4, 1 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 10
VALUES ( 'Насурово',                 6, 2 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 11
VALUES ( 'Подвязье',                 6, 4 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 12
VALUES ( 'Чернобаево',               7, 3 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 13
VALUES ( 'Старожилово',              7, 3 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 14
VALUES ( 'Смена',                    5, 1 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 15
VALUES ( 'ВНИИК',                    4, 4 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 16
VALUES ( 'Марково',                  4, 1 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 17
VALUES ( 'Бол.-Жоково',              4, 3 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 18
VALUES ( 'Бол.-Жоково через Рыбное', 4, 3 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 19
VALUES ( 'Борисовское',              4, 3 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 20
VALUES ( 'Борисовское через Рыбное', 4, 3 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 21
VALUES ( 'Рыбное',                   4, 3 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 22
VALUES ( 'Екимовка',                 6, 2 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 23
VALUES ( 'Федякино',                 4, 3 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 24
VALUES ( 'Новосёлки',                4, 1 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 25
VALUES ( 'Победа',                   8, 1 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 26
VALUES ( 'Фёдоровское',              5, 2 )
INSERT INTO Paths ( [Name], DirectionID, PlatformNumber ) -- 27
VALUES ( 'Жокино',                   5, 1 )

-- Запись муждугородных маршрутов
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 28
VALUES ( 'Гусь Хрустальный',       9, 2,  7 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 29
VALUES ( 'Нижний Новгород',       10, 2,  9 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 30
VALUES ( 'Муром',                 10, 2,  8 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 31
VALUES ( 'Шатура',                10, 2,  8 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 32
VALUES ( 'Иваново',               12, 2,  8 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 33
VALUES ( 'Владимир',               9, 2,  8 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 34
VALUES ( 'Ямбирно',               13, 2,  7 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 35
VALUES ( 'Шацк',                  13, 2,  7 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 36
VALUES ( 'Сараи',                 13, 2,  6 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 37
VALUES ( 'Ольхи',                 13, 2,  6 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 38
VALUES ( 'Сапожок',               13, 2,  6 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 39
VALUES ( 'Тула',                  14, 2,  9 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 40
VALUES ( 'Орёл',                  15, 2,  9 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 41
VALUES ( 'Новомосковск',          14, 2,  9 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 42
VALUES ( 'Кимовск',               14, 2,  9 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 43
VALUES ( 'Михайлов',              13, 2,  9 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 44
VALUES ( 'Сасово',                13, 2,  7 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 45
VALUES ( 'Пронск',                13, 2,  5 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 46
VALUES ( 'Чернава',               13, 2,  6 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 47
VALUES ( 'Милославское',          13, 2,  6 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 48
VALUES ( 'Александро-Невский',    13, 2,  5 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 49
VALUES ( 'Скопин через Захарово', 13, 2,  6 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 50
VALUES ( 'Скопин через Пронск',   13, 2,  6 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 51
VALUES ( 'Новомичуринск',         13, 2,  5 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 52
VALUES ( 'Путятино',              13, 2,  7 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 53
VALUES ( 'Кадом',                 13, 2,  7 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 54
VALUES ( 'Липецк',                16, 2,  5 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 55
VALUES ( 'Ухолово',               13, 2,  5 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 56
VALUES ( 'Ряжск',                 13, 2,  5 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 57
VALUES ( 'Коломна',               11, 2,  9 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 58
VALUES ( 'Москва',                11, 2,  8 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 59
VALUES ( 'Зарайск',               11, 2,  9 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 60
VALUES ( 'Моршанск',              17, 2, 10 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 61
VALUES ( 'Сосновка',              17, 2, 10 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 62
VALUES ( 'Ермишь',                13, 2,  7 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 63
VALUES ( 'Саранск',               18, 2, 10 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 64
VALUES ( 'Поливаново',            13, 2,  9 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 65
VALUES ( 'Шилово',                13, 2,  7 )
INSERT INTO Paths ( [Name], DirectionID, RangeKindID, PlatformNumber ) -- 66
VALUES ( 'Октябрьский',           13, 2,  5 )

-- Зaпиcь дaнныx в тaблицу цен билетов на автобусы

-- Запись пригородных маршрутов

-- Направление #1 - Шиловский район
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  1, 1, NULL, 6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  1, 2,   45, 6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  1, 3,   45, 6 )

-- Направление #2 - Скопинский район
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  2, 1, NULL, 6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  2, 2,   26, 6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  2, 3,   30, 6 )

-- Направление #3 - Путятинский район
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  3, 1, NULL, 3 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  3, 2,   16, 3 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  3, 3,   20, 3 )

-- Направление #4 - Рыбновский район

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  4, 1, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  4, 2, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  4, 3, NULL, NULL )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  8, 1, NULL,    8 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  8, 2, 50,      8 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  8, 3, NULL,    8 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  9, 1, 45,      6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  9, 2, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  9, 3, 45,      6 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 15, 1, 25,      4 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 15, 2, NULL,    4 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 15, 3, NULL,    4 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 16, 1, 15,      3 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 16, 2, NULL,    3 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 16, 3, 15,      3 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 17, 1, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 17, 2, 60,      6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 17, 3, NULL,    6 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 18, 1, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 18, 2, 65,      6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 18, 3, NULL,    6 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 19, 1, NULL,    8 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 19, 2, 60,      8 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 19, 3, NULL,    8 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 20, 1, NULL,    8 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 20, 2, 65,      8 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 20, 3, NULL,    8 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 21, 1, 20,      3 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 21, 2, NULL,    3 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 21, 3, 20,      3 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 23, 1, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 23, 2, 60,      6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 23, 3, NULL,    6 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 24, 1, 45,      6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 24, 2, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 24, 3, NULL,    6 )

-- Направление #5 - Захаровский район

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  5, 1, 44,      6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  5, 2, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  5, 3, 40,      6 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  6, 1, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  6, 2, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  6, 3, 45,      6 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  7, 1, NULL,    5 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  7, 2, NULL,    5 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES (  7, 3, 45,      5 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 14, 1, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 14, 2, 55,      6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 14, 3, 50,      6 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 26, 1, 37,      6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 26, 2, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 26, 3, NULL,    6 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 27, 1, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 27, 2, 54,      6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 27, 3, NULL,    6 )

-- Направление #6 - Рязанский район

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 10, 1, NULL,    5 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 10, 2, 27,      5 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 10, 3, 30,      5 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 11, 1, 15,      3 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 11, 2, NULL,    3 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 11, 3, 15,      3 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 22, 1, 26,      5 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 22, 2, NULL,    5 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 22, 3, 30,      5 )

-- Направление #7 - Старожиловский район

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 12, 1, NULL,    3 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 12, 2, NULL,    3 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 12, 3, 15,      3 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 13, 1, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 13, 2, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 13, 3, NULL, NULL )

-- Направление #8 - Сараевский район
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 25, 1, 45,      6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 25, 2, NULL,    6 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 25, 3, 45,      6 )

-- Запись междугородных маршрутов

-- Направление # 9 - Владимирская область

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 28, 1, NULL,   30 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 28, 2, 149,    30 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 28, 3, NULL,   30 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 33, 1, NULL,   34 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 33, 2, 226,    34 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 33, 3, NULL,   34 )

-- Направление #10 - Нижегородская область

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 29, 1, NULL,   66 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 29, 2, 440,    66 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 29, 3, NULL,   66 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 30, 1, NULL,   46 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 30, 2, 232,    46 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 30, 3, NULL,   46 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 31, 1, NULL,   40 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 31, 2, 115,    40 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 31, 3, NULL,   40 )

-- Направление #11 - Московская область

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 57, 1, NULL,   20 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 57, 2, 50,     20 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 57, 3, NULL,   20 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 58, 1, NULL,   20 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 58, 2, 190,    20 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 58, 3, NULL,   20 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 59, 1, NULL,   30 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 59, 2, 77,     30 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 59, 3, NULL,   30 )

-- Направление #12 - Ивановская область
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 32, 1, NULL,   65 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 32, 2, 324,    65 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 32, 3, NULL,   65 )

-- Направление #13 - Рязанская область

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 34, 1, NULL,   29 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 34, 2, 198,    29 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 34, 3, NULL,   29 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 35, 1, NULL,   25 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 35, 2, 167,    25 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 35, 3, NULL,   25 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 36, 1, NULL,   28 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 36, 2, 187,    28 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 36, 3, NULL,   28 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 37, 1, NULL,   30 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 37, 2, 200,    30 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 37, 3, NULL,   30 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 38, 1, NULL,   21 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 38, 2, 146.5,  21 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 38, 3, NULL,   21 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 43, 1, 55,     10 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 43, 2, 65,     10 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 43, 3, NULL,   10 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 44, 1, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 44, 2, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 44, 3, NULL, NULL )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 45, 1, 55,     10 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 45, 2, 70,     10 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 45, 3, 70,     10 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 46, 1, NULL,   26 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 46, 2, 170,    26 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 46, 3, NULL,   26 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 47, 1, NULL,   15 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 47, 2, 132,    15 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 47, 3, NULL,   15 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 48, 1, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 48, 2, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 48, 3, NULL, NULL )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 49, 1, NULL,   17 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 49, 2, 116,    17 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 49, 3, 103,    17 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 50, 1, NULL,   16 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 50, 2, 108,    16 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 50, 3, 108,    16 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 51, 1, 75,     13 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 51, 2, 90,     13 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 51, 3, 90,     13 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 52, 1, NULL,   18 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 52, 2, 124,    18 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 52, 3, NULL,   18 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 53, 1, NULL,   30 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 53, 2, 220,    30 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 53, 3, NULL,   30 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 55, 1, NULL,   21 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 55, 2, 150,    21 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 55, 3, NULL,   21 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 56, 1, NULL,   18 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 56, 2, 121,    18 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 56, 3, NULL,   18 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 62, 1, NULL,   30 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 62, 2, 220,    30 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 62, 3, NULL,   30 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 64, 1, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 64, 2, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 64, 3, 85,   NULL )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 65, 1, NULL,   12 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 65, 2, NULL,   12 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 65, 3, 98,     12 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 66, 1, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 66, 2, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 66, 3, NULL, NULL )

-- Направление #14 - Тульская область

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 39, 1, NULL,   27 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 39, 2, 182,    27 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 39, 3, NULL,   27 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 41, 1, NULL,   25 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 41, 2, 121,    25 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 41, 3, NULL,   25 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 42, 1, NULL,   33 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 42, 2, 120.5,  33 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 42, 3, NULL,   33 )

-- Направление #15 - Орловская область
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 40, 1, NULL,   51 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 40, 2, 341,   51 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 40, 3, NULL,   51 )

-- Направление #16 - Липецкая область
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 54, 1, NULL,  19.5 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 54, 2, 260.3, 19.5 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 54, 3, NULL,  19.5 )

-- Направление #17 - Тамбовская область

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 60, 1, NULL, 70.5 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 60, 2, 205,  70.5 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 60, 3, NULL, 70.5 )

INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 61, 1, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 61, 2, NULL, NULL )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 61, 3, NULL, NULL )

-- Направление #18 - Саранская область
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 63, 1, NULL,   45 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 63, 2, 450,    45 )
INSERT INTO BusesTicketsCosts ( PathID, BusCategoryID,
	BusTicketCost, BusSeatLuggageTransportCost )
VALUES ( 63, 3, NULL,   45 )

-- Зaпиcь дaнныx в тaблицу остановок

-- Запись остановок пригородных маршрутов

-- Маршрут #1 - Константиново
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово',     1, 1, 15.205 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Марьино 2-е',   1, 2,  5.762 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ивашково',      1, 3, 13.827 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пахотино',      1, 4,  9.763 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Добрый Сот',    1, 5, 11.164 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ивановка',      1, 6, 17.527 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шёлухово',      1, 7,  5.873 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Николаевка',    1, 8,  6.111 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Константиново', 1, 9,  6.737 )

-- Маршрут #2 - Высокое
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокие Дворики', 2, 1, 16.247 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово',        2, 2, 28.056 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Заречье 2-е',     2, 3, 26.545 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Восточный',       2, 4, 28.545 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокое',         2, 5,  6.506 )

-- Маршрут #3 - Рыбхоз
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово',             3, 1, 15.205 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ивашково',              3, 2, 19.589 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Добрый Сот',            3, 3, 19.927 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шёлухово',              3, 4, 23.301 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Авдотьинка',            3, 5, 25.437 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Путятино',              3, 6, 18.029 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'п. Турницкого рыбхоза', 3, 7, 17.336 )

-- Маршрут #4 - Батурино
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зеленинские Дворики', 4, 1, 14.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокое',             4, 2,  4.376 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Нов.-Батурино',       4, 3,  4.374 )

-- Маршрут #5 - Захарово
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокие Дворики',     5, 1, 16.247 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'учхоз. Стенькино',    5, 2,  4.241 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Волдырёвка',          5, 3,  2.280 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Дёмкино',             5, 4,  2.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захаровские дворики', 5, 5, 10.232 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Попадьино',           5, 6,  2.500 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово',            5, 7,  5.596 )

-- Маршрут #6 - Альяшево
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ульяновка', 6, 1, 12.956 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Подвязье',  6, 2,  3.812 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Киселёво',  6, 3,  3.508 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Насурово',  6, 4,  6.219 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Подлесье',  6, 5,  2.215 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Альяшево',  6, 6,  4.074 )

-- Маршрут #7 - Зимино
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Горяйново',    7, 1, 18.565 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мантурово',    7, 2,  2.256 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зеленино',     7, 3,  2.578 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Алёшня',       7, 4,  4.942 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пальные',      7, 5,  6.301 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Свистово',     7, 6,  2.303 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Хорошово',     7, 7,  6.000 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Стар. Зимино', 7, 8,  1.092 )

-- Маршрут #8 - Вакино
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зеленинские Дворики', 8, 1, 14.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокое',             8, 2,  4.376 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Дивово',              8, 3, 13.389 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Вакино',              8, 4,  6.200 )

-- Маршрут #9 - Костино
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зеленинские Дворики', 9, 1, 14.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Рыбное',              9, 2,  3.167 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сидоровка',           9, 3,  3.330 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шишкино',             9, 4,  4.029 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Раменки',             9, 5,  4.592 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Кривоносово',         9, 6,  2.744 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Костино',             9, 7,  2.574 )

-- Маршрут #10 - Насурово
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Подвязье', 10, 1, 17.159 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Киселёво', 10, 2,  2.960 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Насурово', 10, 3,  7.234 )

-- Маршрут #11 - Подвязье
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Даниловка', 11, 1, 11.727 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ульяновка', 11, 2,  1.354 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Подвязье',  11, 3,  2.742 )

-- Маршрут #12 - Чернобаево
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Качеево',    12, 1, 14.763 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Искра',      12, 2, 14.706 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Епихино',    12, 3,  8.321 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гребнево',   12, 4,  2.311 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Чернобаево', 12, 5,  6.860 )

-- Маршрут #13 - Старожилово
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Качеево',     13, 1, 14.763 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Искра',       13, 2, 14.706 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Епихино',     13, 3,  8.321 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гребнево',    13, 4,  2.311 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Чернобаево',  13, 5,  6.860 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Старожилово', 13, 6, 10.777 )

-- Маршрут #14 - Смена
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокие Дворики',     14, 1, 16.247 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'учхоз. Стенькино',    14, 2,  4.241 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Волдырёвка',          14, 3,  2.280 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Дёмкино',             14, 4,  2.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захаровские дворики', 14, 5, 10.232 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Попадьино',           14, 6,  2.500 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово',            14, 7,  5.596 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'свх. Смена',          14, 8, 11.352 )

-- Маршрут #15 - ВНИИК
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зеленинские Дворики',          15, 1, 14.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокое',                      15, 2,  4.376 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'п. Опытного конезавода ВНИИК', 15, 3,  3.409 )

-- Маршрут #16 - Марково
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зеленинские Дворики', 16, 1, 14.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Рыбное',              16, 2,  3.167 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сидоровка',           16, 3,  3.330 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шишкино',             16, 4,  4.029 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зубово',              16, 5,  3.300 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Марково',             16, 6,  1.214 )

-- Маршрут #17 - Бол.-Жоково
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокие Дворики',     17,  1, 16.247 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'учхоз. Стенькино',    17,  2,  4.241 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Волдырёвка',          17,  3,  2.280 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Дёмкино',             17,  4,  2.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захаровские дворики', 17,  5, 10.232 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Попадьино',           17,  6,  2.500 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово',            17,  7,  5.500 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Субботино',           17,  8, 10.204 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мал. Коровино',       17,  9,  9.557 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Бол. Коровино',       17, 10,  3.384 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Бол.-Жоково',         17, 11,  9.409 )

-- Маршрут #18 - Бол.-Жоково через Рыбное
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Рыбное',      18,  1, 18.565 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Горяйново',   18,  2, 18.565 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мантурово',   18,  3,  2.256 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зеленино',    18,  4,  2.578 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Алёшня',      18,  5,  4.942 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пальные',     18,  6,  6.301 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сливково',    18,  7,  9.069 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пионерский',  18,  8,  3.162 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Малышево',    18,  9,  5.896 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Бол.-Жоково', 18, 10,  8.379 )

-- Маршрут #19 - Борисовское
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокие Дворики',     19,  1, 16.247 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'учхоз. Стенькино',    19,  2,  4.241 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Волдырёвка',          19,  3,  2.280 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Дёмкино',             19,  4,  2.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захаровские дворики', 19,  5, 10.232 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Попадьино',           19,  6,  2.500 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово',            19,  7,  5.500 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Субботино',           19,  8, 10.204 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мал. Коровино',       19,  9,  9.557 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Бол. Коровино',       19, 10,  3.384 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Борисовское',         19, 11,  9.457 )

-- Маршрут #20 - Борисовское через Рыбное
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Рыбное',      20,  1, 18.565 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Горяйново',   20,  2, 18.565 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мантурово',   20,  3,  2.256 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зеленино',    20,  4,  2.578 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Алёшня',      20,  5,  4.942 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пальные',     20,  6,  6.301 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сливково',    20,  7,  9.069 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пионерский',  20,  8,  3.162 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Малышево',    20,  9,  5.596 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Борисовское', 20, 10, 10.687 )

-- Маршрут #21 - Рыбное
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Рыбное', 21, 1, 13.678 )

-- Маршрут #22 - Екимовка
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокие Дворики', 22, 1, 16.247 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Абрютино',        22, 2,  1.677 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Дедюхино',        22, 3,  1.739 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Рожок',           22, 4,  2.597 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Екимовка',        22, 5,  4.284 )

-- Маршрут #23 - Федякино
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зеленинские Дворики', 23, 1, 14.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Рыбное',              23, 2,  3.167 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сидоровка',           23, 3,  3.330 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шишкино',             23, 4,  4.029 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Раменки',             23, 5,  4.592 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Константиново',       23, 6,  2.744 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Федякино',            23, 7,  3.744 )

-- Маршрут #24 - Новосёлки
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зеленинские Дворики', 24, 1, 14.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Рыбное',              24, 2,  3.167 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сидоровка',           24, 3,  3.330 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шишкино',             24, 4,  4.029 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Раменки',             24, 5,  4.592 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Новосёлово',          24, 6, 12.676 )

-- Маршрут #25 - Победа
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Качеево',        25,  1, 14.763 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Искра',          25,  2, 14.706 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Епихино',        25,  3,  8.321 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гребнево',       25,  4,  2.311 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Чернобаево',     25,  5,  6.860 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Бол. кожухово',  25,  6,  7.425 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Асташево',       25,  7,  2.622 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Соболево',       25,  8,  4.381 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Суйск',          25,  9,  6.765 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Свиридовка',     25, 10, 11.681 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Лужки',          25, 11,  5.224 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Незнаново',      25, 12,  2.501 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пехлец',         25, 13, 10.067 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'п. Газопровода', 25, 14,  2.856 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Кр. поляна',     25, 15,  8.062 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Щурово',         25, 16, 10.402 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ясенок',         25, 17,  5.343 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ухолово',        25, 18,  9.111 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Дягтяные борки', 25, 19, 20.000 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сараи',          25, 20, 19.774 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Муравлянка',     25, 21, 16.339 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мордово',        25, 22,  7.887 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Победа',         25, 23,  5.342 )

-- Маршрут #26 - Фёдоровское
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокие Дворики',  26, 1, 16.247 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'учхоз. Стенькино', 26, 2,  4.241 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Волдырёвка',       26, 3,  2.280 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Дёмкино',          26, 4,  2.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Безлычное',        26, 5,  6.149 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Фёдоровское',      26, 6,  4.736 )

-- Маршрут #27 - Жокино
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Высокие Дворики',    27, 1, 16.247 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'учхоз. Стенькино',   27, 2,  4.241 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Волдырёвка',         27, 3,  2.280 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Дёмкино',            27, 4,  2.803 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захаровские дворики',27, 5, 10.232 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Попадьино',          27, 6,  2.500 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово',           27, 7,  5.596 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Жокино',             27, 8,  9.885 )

-- Запись остановок междугородных маршрутов

-- Маршрут #28 - Гусь Хрустальный
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Солотча',          28, 1, 25 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Криуша',           28, 2, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Спас-Клепики',     28, 3, 28 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Тума',             28, 4, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Великодворский',   28, 5, 11 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Курловский',       28, 6, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гусь Хрустальный', 28, 7, 32 )

-- Маршрут #29 - Нижний Новгород
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Солотча',         29,  1, 25 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Криуша',          29,  2, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Спас-Клепики',    29,  3, 28 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Тума',            29,  4, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гусь Железный',   29,  5, 45 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Касимов',         29,  6, 18 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Меленки',         29,  7, 50 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Муром',           29,  8, 42 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Навашино',        29,  9, 16 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Вача',            29, 10, 53 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Павлово',         29, 11, 26 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ворсма',          29, 12, 15 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Богородск',       29, 13, 16 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Нижний Новгород', 29, 14, 27 )

-- Маршрут #30 - Муром
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Солотча',       30, 1, 25 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Криуша',        30, 2, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Спас-Клепики',  30, 3, 28 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Тума',          30, 4, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гусь Железный', 30, 5, 45 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Касимов',       30, 6, 18 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Меленки',       30, 7, 50 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Муром',         30, 8, 42 )

-- Маршрут #31 - Шатура
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Солотча',      31, 1, 25 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Криуша',       31, 2, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Спас-Клепики', 31, 3, 28 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Середниково',  31, 4, 42 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Погост',       31, 5, 11 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Кривандино',   31, 6, 30 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шатура',       31, 7, 10 )

-- Маршрут #32 - Иваново
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Солотча',          32,  1, 25 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Криуша',           32,  2, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Спас-Клепики',     32,  3, 28 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Тума',             32,  4, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Великодворский',   32,  5, 11 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Курловский',       32,  6, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гусь Хрустальный', 32,  7, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Владимир',         32,  8, 69 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Суздаль',          32,  9, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Лежнево',          32, 10, 55 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Иваново',          32, 11, 27 )

-- Маршрут #33 - Владимир
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Солотча',          33, 1, 25 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Криуша',           33, 2, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Спас-Клепики',     33, 3, 28 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Тума',             33, 4, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Великодворский',   33, 5, 11 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Курловский',       33, 6, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гусь Хрустальный', 33, 7, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Владимир',         33, 8, 69 )

-- Маршрут #34 - Ямбирно
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово', 34, 1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',  34, 2, 67 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Путятино',  34, 3, 46 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шацк',      34, 4, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ямбирно',   34, 5, 47 )

-- Маршрут #35 - Шацк
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово', 35, 1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',  35, 2, 67 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Путятино',  35, 3, 46 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шацк',      35, 4, 43 )

-- Маршрут #36 - Сараи
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово', 36, 1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',  36, 2, 67 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сапожок',   36, 3, 45 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Можары',    36, 4, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сараи',     36, 5, 20 )

-- Маршрут #37 - Ольхи
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово',  37, 1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',   37, 2, 67 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Путятино',   37, 3, 46 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Карабухино', 37, 4, 11 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шацк',       37, 5, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ольхи',      37, 6, 20 )

-- Маршрут #38 - Сапожок
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово', 38, 1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',  38, 2, 67 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Песочня',   38, 3, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сапожок',   38, 4, 22 )

-- Маршрут #39 - Тула
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово', 39, 1, 44 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Михайлов', 39, 2, 26 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Кимовск',  39, 3, 51 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Узловая',  39, 4, 19 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Болохово', 39, 5, 36 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Тула',     39, 6, 30 )

-- Маршрут #40 - Орёл
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово',           40,  1, 44 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Михайлов',           40,  2, 26 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ряжск',              40,  3, 92 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Александро-Невский', 40,  4, 30 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Чаплыгин',           40,  5, 37 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Знаменское',         40,  6, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Данков',             40,  7, 20 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Воскресенское',      40,  8, 33 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ефремов',            40,  9, 48 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Галица',             40, 10, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Новосиль',           40, 11, 68 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Залегощь',           40, 12, 15 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Орёл',               40, 13, 62 )

-- Маршрут #41 - Новомосковск
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово',     41, 1, 44 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Михайлов',     41, 2, 26 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Кимовск',      41, 3, 51 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Донской',      41, 4, 13 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Узловая',      41, 5,  6 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Новомосковск', 41, 6,  8 )

-- Маршрут #42 - Кимовск
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово', 42, 1, 44 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Михайлов', 42, 2, 26 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Кимовск',  42, 3, 51 )

-- Маршрут #43 - Михайлов
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово', 43, 1, 44 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Михайлов', 43, 2, 26 )

-- Маршрут #44 - Сасово
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово',  44, 1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Заречье',    44, 2, 47 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',   44, 3, 20 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Путятино',   44, 4, 46 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Карабухино', 44, 5, 11 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шацк',       44, 6, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Каверино',   44, 7, 17 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сасово',     44, 8, 24 )

-- Маршрут #45 - Пронск
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Реткино',   45, 1, 12 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Абакумово', 45, 2, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пронск',    45, 3, 20 )

-- Маршрут #46 - Чернава
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Реткино',     46, 1, 12 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Абакумово',   46, 2, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пронск',      46, 3, 20 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мамоново',    46, 4, 16 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Скопин',      46, 5, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Октябрьский', 46, 6,  9 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Чернава',     46, 7, 20 )

-- Маршрут #47 - Милославское
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Реткино',      47, 1, 12 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гребнево',     47, 2, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Незнаново',    47, 3, 33 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Кораблино',    47, 4, 16 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Скопин',       47, 5, 34 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Заречный',     47, 6,  7 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Милославское', 47, 7, 22 )

-- Маршрут #48 - Александро-Невский
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Реткино',            48, 1, 12 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гребнево',           48, 2, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Незнаново',          48, 3, 33 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ряжск',              48, 4, 37 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Александро-Невский', 48, 5, 30 )

-- Маршрут #49 - Скопин через Захарово
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово', 49, 1, 44 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Михайлов', 49, 2, 26 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Горлово',  49, 3, 55 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Скопин',   49, 4, 33 )

-- Маршрут #50 - Скопин через Пронск
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Реткино',   50, 1, 12 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Абакумово', 50, 2, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пронск',    50, 3, 20 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мамоново',  50, 4, 16 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Скопин',    50, 5, 23 )

-- Маршрут #51 - Новомичуринск
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Реткино',       51, 1, 12 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Абакумово',     51, 2, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пронск',        51, 3, 20 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Новомичуринск', 51, 4,  9 )

-- Маршрут #52 - Путятино
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово', 52, 1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',  52, 2, 67 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Путятино',  52, 3, 46 )

-- Маршрут #53 - Кадом
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово',  53,  1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Заречье',    53,  2, 47 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',   53,  3, 20 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Путятино',   53,  4, 46 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Карабухино', 53,  5, 11 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шацк',       53,  6, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Каверино',   53,  7, 17 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сасово',     53,  8, 24 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Восход',     53,  9, 33 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Кадом',      53, 10, 28 )

-- Маршрут #54 - Липецк
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Реткино',            54,  1, 12 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гребнево',           54,  2, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Незнаново',          54,  3, 33 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ряжск',              54,  4, 37 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Александро-Невский', 54,  5, 30 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Цаплыгин',           54,  6, 34 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Новополянье',        54,  7, 13 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Знаменское',         54,  8, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'данково',            54,  9, 20 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Липецк',             54, 10, 96 )

-- Маршрут #55 - Ухолово
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Реткино',   55, 1, 12 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гребнево',  55, 2, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Незнаново', 55, 3, 33 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ряжск',     55, 4, 37 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ухолово',   55, 5, 33 )

-- Маршрут #56 - Ряжск
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Реткино',   56, 1, 12 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Гребнево',  56, 2, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Незнаново', 56, 3, 33 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ряжск',     56, 4, 37 )

-- Маршрут #57 - Коломна
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Луховицы', 57, 1, 59 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Коломна',  57, 2, 23 )

-- Маршрут #58 - Москва
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Луховицы',   58, 1, 59 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Коломна',    58, 2, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Степанщино', 58, 3, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Бронницы',   58, 4, 26 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Чулково',    58, 5, 21 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Москва',     58, 6, 23 )

-- Маршрут #59 - Зарайск
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Луховицы', 59, 1, 59 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Зарайск',  59, 2, 29 )

-- Маршрут #60 - Моршанск
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово', 60, 1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',  60, 2, 67 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Путятино',  60, 3, 46 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шацк',      60, 4, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Моршанск',  60, 5, 70 )

-- Маршрут #61 - Сосновка
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово',  61, 1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',   61, 2, 67 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Путятино',   61, 3, 46 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шацк',       61, 4, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Моршанск',   61, 5, 70 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Кулеватово', 61, 6, 40 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сосновка',   61, 7, 20 )

-- Маршрут #62 - Ермишь
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово',  62,  1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Заречье',    62,  2, 47 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',   62,  3, 20 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Путятино',   62,  4, 46 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Карабухино', 62,  5, 11 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шацк',       62,  6, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Каверино',   62,  7, 17 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Сасово',     62,  8, 24 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Восход',     62,  9, 33 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Ермишь',     62, 10, 22 )

-- Маршрут #63 - Саранск
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово',      63,  1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',       63,  2, 67 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Путятино',       63,  3, 46 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шацк',           63,  4, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Салтыково',      63,  5, 47 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Поляна',         63,  6, 38 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Тобеево',        63,  7, 46 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Атюрьево',       63,  8, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Краснослободск', 63,  9, 32 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Стар Шайгово',  63, 10, 50 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Новотроицкое',   63, 11, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Саранск',        63, 12, 35 )

-- Маршрут #64 - Поливаново
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Захарово',   64, 1, 44 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Поливаново', 64, 2, 31 )

-- Маршрут #65 - Шилово
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Турлатово', 65, 1,  8 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Заречье',   65, 2, 47 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мосолово',  65, 3, 20 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Шилово',    65, 4,  5 )

-- Маршрут #66 - Октябрьский
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Реткино',     66, 1, 12 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Абакумово',   66, 2, 43 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Пронск',      66, 3, 20 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Мамоново',    66, 4, 16 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Скопин',      66, 5, 23 )
INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance )
VALUES ( 'Октябрьский', 66, 6,  9 )

-- Зaпиcь дaнныx в тaблицу расписания рейсов

-- Заполнение расписания рейсов пригородных маршрутов

-- Запись рейсов пригородного маршрута №2 - Высокое

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 1, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 2, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 3, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 4, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 5, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 6, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 7, '06:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 1, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 2, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 3, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 4, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 5, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 6, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 7, '12:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 1, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 2, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 3, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 4, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 5, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 6, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 3, 7, '15:50' )

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 1, '05:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 2, '05:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 3, '05:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 4, '05:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 5, '05:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 1, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 2, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 3, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 4, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 5, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 6, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 7, '07:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 1, '10:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 2, '10:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 3, '10:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 4, '10:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 5, '10:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 6, '10:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 7, '10:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 1, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 2, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 3, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 4, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 5, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 6, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 7, '14:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 1, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 2, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 3, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 4, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 5, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 6, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  2, 2, 7, '18:30' )

-- Запись рейсов пригородного маршрута №3 - Рыбхоз

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 1, '11:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 2, '11:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 3, '11:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 4, '11:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 5, '11:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 6, '11:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 7, '11:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 1, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 2, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 3, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 4, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 5, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 6, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 3, 7, '19:30' )

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 1, '06:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 2, '06:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 3, '06:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 4, '06:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 5, '06:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 1, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 2, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 3, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 4, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 5, '07:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 6, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 7, '06:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 1, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 2, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 3, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 4, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 5, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 6, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 7, '09:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 1, '13:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 2, '13:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 3, '13:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 4, '13:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 5, '13:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 6, '13:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 7, '13:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 1, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 2, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 3, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 4, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 5, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 6, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 7, '16:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 1, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 2, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 3, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 4, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 5, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 6, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  3, 2, 7, '18:30' )

-- Запись рейсов пригородных маршрутов №5 - Захарово - и №6 - Альяшево

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  5, 3, 1, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  5, 3, 2, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  5, 3, 3, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  5, 3, 4, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  5, 3, 5, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  5, 3, 6, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  5, 3, 7, '11:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  5, 3, 2, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  5, 3, 4, '12:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  5, 3, 2, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  5, 3, 4, '06:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  6, 3, 5, '18:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  6, 3, 7, '15:10' )

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  6, 2, 5, '18:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  6, 2, 6, '06:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  6, 2, 7, '06:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  6, 2, 6, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  6, 2, 7, '13:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  6, 2, 6, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  6, 2, 7, '17:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  6, 2, 7, '15:10' )

-- Запись рейсов пригородного маршрута №7 - Зимино

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 6, '13:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 7, '13:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 6, '17:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 7, '17:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 1, '17:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 2, '17:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 3, '17:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 4, '17:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 5, '17:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 1, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 2, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 3, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 4, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 5, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 6, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  7, 3, 7, '07:00' )

-- Запись рейсов пригородного маршрута №8 - Вакино

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 1, '06:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 2, '06:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 3, '06:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 4, '06:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 5, '06:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 6, '06:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 7, '06:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 1, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 2, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 3, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 4, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 5, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 6, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 7, '09:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 1, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 2, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 3, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 4, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 5, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 6, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  8, 2, 7, '13:40' )

-- Запись рейсов пригородного маршрута №9 - Костин

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 1, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 2, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 3, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 4, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 5, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 6, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 7, '06:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 1, '10:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 2, '10:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 3, '10:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 4, '10:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 5, '10:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 6, '10:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 7, '10:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 1, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 2, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 3, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 4, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 5, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 6, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 7, '12:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 1, '15:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 2, '15:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 3, '15:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 4, '15:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 5, '15:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 6, '15:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 7, '15:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 1, '17:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 2, '17:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 3, '17:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 4, '17:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 5, '17:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 6, '17:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES (  9, 3, 7, '17:50' )

-- Запись рейсов пригородного маршрута №10 - Насурово

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 1, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 2, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 3, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 4, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 5, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 6, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 7, '10:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 1, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 2, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 3, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 4, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 5, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 6, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 3, 7, '17:20' )

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 1, '05:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 2, '05:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 3, '05:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 4, '05:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 5, '05:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 6, '05:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 7, '05:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 1, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 2, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 3, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 4, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 5, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 6, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 7, '08:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 1, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 2, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 3, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 4, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 5, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 6, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 7, '11:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 1, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 2, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 3, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 4, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 5, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 6, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 7, '13:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 1, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 2, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 3, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 4, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 5, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 6, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 7, '16:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 1, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 2, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 3, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 4, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 5, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 6, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 10, 2, 7, '19:05' )

-- Запись рейсов пригородного маршрута №11 - Подвязье

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 7, '07:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 7, '09:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 7, '10:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 7, '13:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 7, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 7, '16:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 7, '19:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 6, '17:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 7, '17:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 1, '16:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 2, '16:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 3, '16:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 4, '16:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 5, '16:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 1, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 2, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 3, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 4, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 3, 5, '18:10' )

-- Категория - Жёсткий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 1, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 2, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 3, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 4, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 5, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 6, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 7, '07:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 1, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 2, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 3, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 4, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 5, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 6, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 7, '10:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 1, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 2, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 3, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 4, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 5, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 6, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 7, '14:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 1, '20:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 2, '20:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 3, '20:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 4, '20:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 5, '20:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 6, '20:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 7, '20:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 6, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 7, '18:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 11, 1, 6, '06:10' )

-- Запись рейсов пригородного маршрута №12 - Чернобаево

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '06:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '06:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '06:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '06:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '06:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '06:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '06:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '06:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '06:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '06:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '06:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '06:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '06:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '06:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '06:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '06:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '06:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '06:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '06:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '06:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '06:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '06:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '06:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '06:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '06:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '06:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '06:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '06:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '06:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '06:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '06:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '06:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '06:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '06:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '06:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '07:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '07:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '07:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '07:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '07:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '07:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '07:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '07:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '07:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '07:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '07:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '07:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '07:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '07:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '07:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '07:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '07:55' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '08:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '08:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '08:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '08:55' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '09:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '09:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '09:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '09:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '09:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '09:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '09:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '09:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '09:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '09:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '09:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '09:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '09:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '09:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '09:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '09:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '09:55' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '10:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '10:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '10:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '10:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '10:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '10:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '10:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '10:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '10:55' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '11:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '11:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '11:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '11:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '11:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '11:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '11:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '11:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '11:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '12:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '12:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '12:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '12:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '12:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '12:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '12:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '12:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '12:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '12:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '12:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '12:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '12:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '12:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '12:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '12:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '13:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '13:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '13:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '13:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '13:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '13:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '13:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '13:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '13:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '13:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '14:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '14:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '14:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '14:55' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '15:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '15:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '15:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '15:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '15:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '15:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '15:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '15:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '15:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '15:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '16:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '16:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '16:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '16:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '17:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '17:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '17:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '17:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '17:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '17:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '17:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '17:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '17:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '17:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '17:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '17:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '17:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '17:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '17:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '17:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '18:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '18:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '18:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '18:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '18:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '18:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '18:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '18:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '18:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '18:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '18:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '18:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '18:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '18:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '18:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '18:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '18:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '18:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '18:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '18:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '18:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '18:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '18:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '18:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '18:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '18:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '18:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '18:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '18:55' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '19:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '19:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '19:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '19:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '19:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '19:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '19:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '19:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '19:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '19:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '19:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '19:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '19:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '19:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '19:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '19:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '20:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '20:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '20:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '20:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '20:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '20:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '20:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '20:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 1, '20:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 2, '20:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 3, '20:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 4, '20:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 5, '20:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 6, '20:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 12, 3, 7, '20:50' )

-- Запись рейсов пригородного маршрута №13 - Старожилово

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 1, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 2, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 3, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 4, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 5, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 6, '09:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 1, '16:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 2, '16:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 3, '16:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 4, '16:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 5, '16:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 3, 6, '16:00' )

-- Категория - Жёсткий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 1, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 2, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 3, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 4, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 5, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 6, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 7, '07:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 1, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 2, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 3, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 4, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 5, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 6, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 7, '11:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 1, '15:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 2, '15:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 3, '15:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 4, '15:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 5, '15:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 6, '15:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 7, '15:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 1, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 2, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 3, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 4, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 5, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 6, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 13, 1, 7, '19:00' )

-- Запись рейсов пригородного маршрута №14 - Смена

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 1, '06:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 2, '06:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 3, '06:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 4, '06:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 5, '06:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 1, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 2, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 3, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 4, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 5, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 6, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 7, '08:55' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 1, '15:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 2, '15:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 3, '15:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 4, '15:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 5, '15:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 6, '15:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 14, 3, 7, '15:55' )

-- Запись рейсов пригородного маршрута №15 - ВНИИК

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 1, '06:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 2, '06:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 3, '06:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 4, '06:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 5, '06:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 1, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 2, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 3, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 4, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 5, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 6, '07:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 7, '07:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 1, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 2, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 3, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 4, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 5, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 6, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 7, '12:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 1, '17:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 2, '17:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 3, '17:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 4, '17:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 5, '17:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 6, '17:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 15, 3, 7, '17:15' )

-- Запись рейсов пригородного маршрута №16 - Марково

-- Категория - Жёсткий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 1, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 2, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 3, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 4, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 5, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 6, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 7, '06:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 1, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 2, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 3, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 4, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 5, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 6, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 7, '13:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 1, '17:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 2, '17:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 3, '17:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 4, '17:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 5, '17:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 6, '17:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 16, 1, 7, '17:25' )

-- Запись рейсов пригородных маршрутов №17 - Бол.-Жоково,
-- №18 - Бол.-Жоково через Рыбное, №19 - Борисовское -
-- и №20 - Борисовское через Рыбное

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 1, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 2, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 4, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 5, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 6, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 7, '06:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 1, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 2, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 4, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 5, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 6, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 17, 2, 7, '17:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 18, 2, 1, '12:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 18, 2, 2, '12:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 18, 2, 4, '12:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 18, 2, 5, '12:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 18, 2, 6, '12:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 18, 2, 7, '12:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 19, 2, 3, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 19, 2, 3, '17:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 20, 2, 3, '12:30' )

-- Запись рейсов пригородного маршрута №22 - Екимовка

-- Категория - Жёсткий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 1, '05:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 2, '05:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 3, '05:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 4, '05:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 5, '05:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 6, '06:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 6, '09:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 7, '16:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 1, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 2, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 3, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 4, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 5, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 7, '07:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 1, '10:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 2, '10:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 3, '10:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 4, '10:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 5, '10:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 7, '10:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 1, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 2, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 3, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 4, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 5, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 6, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 7, '14:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 1, '18:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 2, '18:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 3, '18:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 4, '18:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 5, '18:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 6, '18:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 22, 1, 7, '19:15' )

-- Запись рейсов пригородных маршрутов №23 - Федякино - и №24 - Новосёлки

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 23, 2, 1, '18:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 23, 2, 2, '18:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 23, 2, 3, '18:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 23, 2, 4, '18:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 23, 2, 5, '18:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 23, 2, 6, '18:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 23, 2, 7, '18:35' )

-- Категория - Жёсткий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 1, '05:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 2, '05:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 3, '05:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 4, '05:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 5, '05:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 6, '05:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 7, '05:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 1, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 2, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 3, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 4, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 5, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 6, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 7, '08:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 1, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 2, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 3, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 4, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 5, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 6, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 7, '14:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 1, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 2, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 3, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 4, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 5, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 6, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 24, 1, 7, '17:45' )

-- Запись рейсов пригородных маршрутов №25 - Победа - и №26 - Фёдоровское

-- Категория - Жёсткий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 1, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 2, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 3, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 4, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 5, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 6, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 7, '07:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 1, '10:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 2, '10:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 3, '10:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 4, '10:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 5, '10:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 6, '10:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 25, 1, 7, '10:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 1, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 2, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 3, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 4, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 5, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 6, '06:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 7, '06:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 1, '13:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 2, '13:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 3, '13:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 4, '13:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 5, '13:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 6, '13:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 7, '13:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 1, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 2, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 3, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 4, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 5, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 6, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 26, 1, 7, '17:45' )

-- Запись рейсов пригородного маршрута №27 - Жокино

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 1, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 2, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 3, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 4, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 5, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 6, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 7, '14:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 1, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 2, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 3, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 4, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 5, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 6, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 7, '17:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 1, '04:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 2, '04:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 3, '04:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 4, '04:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 5, '04:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 27, 2, 6, '04:50' )

-- Заполнение расписания рейсов междугородных маршрутов

-- Запись рейсов межугородных маршрутов №28 - Гусь Хрустальный,
-- №29 - Нижний Новгород, №30 - Муром - и №31 - Шатура

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 28, 2, 1, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 28, 2, 5, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 28, 2, 6, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 28, 2, 7, '13:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 29, 2, 1, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 29, 2, 2, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 29, 2, 3, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 29, 2, 4, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 29, 2, 5, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 29, 2, 6, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 29, 2, 7, '08:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 30, 2, 1, '16:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 30, 2, 2, '16:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 30, 2, 3, '16:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 30, 2, 4, '16:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 30, 2, 5, '16:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 30, 2, 6, '16:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 30, 2, 7, '16:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 31, 2, 1, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 31, 2, 2, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 31, 2, 3, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 31, 2, 4, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 31, 2, 5, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 31, 2, 6, '14:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 31, 2, 7, '14:15' )

-- Запись рейсов межугородных маршрутов №32 - Иваново, №33 - Владимир -
-- и №34 - Ямбирно

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 32, 2, 1, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 32, 2, 2, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 32, 2, 3, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 32, 2, 4, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 32, 2, 5, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 32, 2, 6, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 32, 2, 7, '15:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 33, 2, 1, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 33, 2, 2, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 33, 2, 3, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 33, 2, 4, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 33, 2, 5, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 33, 2, 6, '07:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 33, 2, 7, '07:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 34, 2, 1, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 34, 2, 2, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 34, 2, 3, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 34, 2, 4, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 34, 2, 5, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 34, 2, 6, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 34, 2, 7, '09:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 34, 2, 5, '17:00' )

-- Запись рейсов междугородного маршрута №35 - Шацк

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 1, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 2, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 3, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 4, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 5, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 6, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 7, '07:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 1, '12:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 2, '12:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 3, '12:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 4, '12:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 5, '12:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 6, '12:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 7, '12:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 1, '14:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 2, '14:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 3, '14:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 4, '14:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 5, '14:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 6, '14:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 7, '14:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 1, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 2, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 3, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 4, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 5, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 6, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 7, '16:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 5, '10:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 6, '10:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 35, 2, 7, '19:30' )

-- Запись рейсов межугородных маршрутов №36 - Сараи, №37 - Ольхи -
-- и №38 - Сапожок

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 36, 2, 1, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 36, 2, 2, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 36, 2, 3, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 36, 2, 4, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 36, 2, 5, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 36, 2, 6, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 36, 2, 7, '07:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 37, 2, 1, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 37, 2, 2, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 37, 2, 3, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 37, 2, 4, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 37, 2, 5, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 37, 2, 6, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 37, 2, 7, '16:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 1, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 2, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 3, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 4, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 5, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 6, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 7, '10:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 1, '16:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 2, '16:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 3, '16:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 4, '16:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 5, '16:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 6, '16:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 7, '16:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 5, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 7, '18:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 38, 2, 7, '20:25' )

-- Запись рейсов междугородного маршрута №39 - Тула

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 1, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 2, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 3, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 4, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 5, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 6, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 7, '07:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 1, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 2, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 3, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 4, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 5, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 6, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 7, '13:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 1, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 2, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 3, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 4, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 5, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 6, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 7, '15:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 1, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 2, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 3, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 4, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 5, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 6, '17:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 39, 2, 7, '17:35' )

-- Запись рейсов межугородных маршрутов №40 - Орёл, №41 - Новомосковск -
-- и №42 - Кимовск

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 40, 2, 1, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 40, 2, 2, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 40, 2, 3, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 40, 2, 4, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 40, 2, 5, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 40, 2, 6, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 40, 2, 7, '07:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 1, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 2, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 3, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 4, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 5, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 6, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 7, '11:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 7, '16:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 1, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 2, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 3, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 4, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 5, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 6, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 7, '12:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 1, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 2, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 3, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 4, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 5, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 6, '16:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 41, 2, 7, '16:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 42, 2, 5, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 42, 2, 7, '15:30' )

-- Запись рейсов междугородного маршрута №43 - Михайлов

-- Категория - Жёсткий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 1, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 2, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 3, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 4, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 5, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 6, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 7, '08:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 1, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 2, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 3, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 4, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 5, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 6, '08:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 7, '08:55' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 1, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 2, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 3, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 4, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 5, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 6, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 7, '10:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 1, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 2, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 3, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 4, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 5, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 6, '12:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 7, '12:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 1, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 2, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 3, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 4, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 5, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 6, '14:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 7, '14:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 1, '16:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 2, '16:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 3, '16:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 4, '16:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 5, '16:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 6, '16:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 7, '16:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 1, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 2, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 3, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 4, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 5, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 6, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 1, 7, '18:10' )

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 2, 6, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 2, 6, '15:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 2, 5, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 2, 6, '14:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 2, 7, '14:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 2, 5, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 2, 6, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 2, 7, '20:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 2, 5, '17:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 43, 2, 5, '19:00' )

-- Запись рейсов межугородных маршрутов №44 - Сасово, №45 - Пронск,
-- №46 - Чернава - и №47 - Милославское

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 44, 2, 1, '15:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 44, 2, 3, '15:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 44, 2, 6, '15:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 45, 2, 1, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 45, 2, 2, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 45, 2, 3, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 45, 2, 4, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 45, 2, 5, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 45, 2, 6, '10:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 45, 2, 7, '10:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 1, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 2, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 3, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 4, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 5, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 6, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 7, '08:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 1, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 2, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 3, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 4, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 5, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 6, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 46, 2, 7, '17:00' )

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 47, 3, 1, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 47, 3, 2, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 47, 3, 3, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 47, 3, 4, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 47, 3, 5, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 47, 3, 6, '14:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 47, 3, 7, '14:10' )

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 47, 2, 5, '17:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 47, 2, 5, '18:05' )

-- Запись рейсов междугородного маршрута №48 - Александро-Невский

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 1, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 2, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 3, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 4, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 5, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 6, '06:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 7, '06:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 1, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 2, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 3, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 4, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 5, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 6, '08:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 7, '08:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 1, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 2, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 3, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 4, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 5, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 6, '13:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 7, '13:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 1, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 2, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 3, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 4, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 5, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 6, '14:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 48, 2, 7, '14:55' )

-- Запись рейсов междугородных маршрутов №49 - Скопин через Захарово -
-- и №50 - Скопин через Пронск

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 49, 2, 1, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 49, 2, 2, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 49, 2, 3, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 49, 2, 4, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 49, 2, 5, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 49, 2, 6, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 49, 2, 7, '13:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 1, '09:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 2, '09:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 3, '09:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 4, '09:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 5, '09:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 6, '09:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 7, '09:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 1, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 2, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 3, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 4, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 5, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 6, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 7, '11:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 1, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 2, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 3, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 4, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 5, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 6, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 7, '12:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 1, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 2, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 3, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 4, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 5, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 6, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 7, '14:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 1, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 2, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 3, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 4, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 5, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 6, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 7, '14:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 1, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 2, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 3, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 4, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 5, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 6, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 7, '16:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 1, '18:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 2, '18:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 3, '18:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 4, '18:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 6, '18:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 7, '18:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 5, '17:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 7, '17:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 5, '18:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 5, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 6, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 7, '15:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 2, 7, '17:40' )

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 1, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 2, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 3, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 4, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 5, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 6, '07:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 7, '07:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 1, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 2, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 3, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 4, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 5, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 6, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 7, '08:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 1, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 2, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 3, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 4, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 5, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 6, '10:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 7, '10:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 1, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 2, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 3, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 4, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 5, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 6, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 7, '10:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 1, '12:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 2, '12:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 3, '12:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 4, '12:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 5, '12:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 6, '12:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 7, '12:55' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 1, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 2, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 3, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 4, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 5, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 6, '13:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 7, '13:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 1, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 2, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 3, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 4, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 5, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 6, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 50, 3, 7, '15:00' )

-- Запись рейсов междугородного маршрута №51 - Новомичуринск

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 3, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '07:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '07:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '08:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '08:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 3, '08:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '08:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '08:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '08:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '08:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '09:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '09:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 3, '09:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '09:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '09:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '09:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '09:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 3, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '10:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 3, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '11:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '11:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '13:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '13:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 3, '13:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '13:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '13:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '13:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '13:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 3, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '14:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '14:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 3, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '17:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '17:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '18:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '18:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 3, '18:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '18:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '18:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '18:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '18:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 3, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '19:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '19:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '19:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '19:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '19:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '20:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '20:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '20:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '13:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '20:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '17:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '08:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '10:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '14:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '10:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 1, '19:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 2, '19:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 4, '19:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 5, '19:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 6, '19:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 3, 7, '19:45' )

-- Категория - Жёсткий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '06:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '08:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '08:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '08:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '08:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '09:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '09:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '11:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '11:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '12:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '12:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '12:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '12:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '12:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '12:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '12:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '12:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '12:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '12:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '12:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '12:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '12:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '12:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '12:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '13:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '13:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '13:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '13:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '15:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '15:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 1, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 2, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 3, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 4, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 5, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 6, '15:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 1, 7, '15:30' )

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 1, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 2, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 3, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 4, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 5, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 6, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 7, '15:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 1, '16:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 2, '16:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 3, '16:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 4, '16:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 5, '16:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 6, '16:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 7, '16:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 1, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 2, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 3, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 4, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 5, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 6, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 7, '16:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 1, '17:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 2, '17:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 3, '17:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 4, '17:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 5, '17:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 6, '17:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 7, '17:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 1, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 2, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 3, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 4, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 5, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 6, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 7, '18:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 1, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 2, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 3, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 4, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 5, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 6, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 7, '19:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 1, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 2, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 3, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 4, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 5, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 6, '20:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 7, '20:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 7, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 51, 2, 7, '18:40' )

-- Запись рейсов межугородных маршрутов №52 - Путятино, №53 - Кадом,
-- №54 - Липецк, №55 - Ухолово - и №56 - Ряжск

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 52, 2, 1, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 52, 2, 3, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 52, 2, 4, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 52, 2, 5, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 52, 2, 6, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 52, 2, 7, '07:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 53, 2, 5, '16:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 54, 2, 1, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 54, 2, 2, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 54, 2, 3, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 54, 2, 4, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 54, 2, 5, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 54, 2, 6, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 54, 2, 7, '16:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 1, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 2, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 3, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 4, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 5, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 6, '13:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 7, '13:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 1, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 2, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 3, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 4, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 5, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 6, '17:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 55, 2, 7, '17:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 56, 2, 1, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 56, 2, 2, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 56, 2, 3, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 56, 2, 4, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 56, 2, 5, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 56, 2, 6, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 56, 2, 7, '12:00' )

-- Запись рейсов междугородного маршрута №57 - Коломна

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 3, 1, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 3, 2, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 3, 3, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 3, 4, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 3, 5, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 3, 6, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 3, 7, '14:25' )

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 1, '08:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 2, '08:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 3, '08:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 4, '08:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 5, '08:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 6, '08:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 7, '08:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 1, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 2, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 3, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 4, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 5, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 6, '12:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 7, '12:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 1, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 2, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 3, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 4, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 5, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 6, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 7, '13:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 1, '14:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 2, '14:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 3, '14:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 4, '14:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 5, '14:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 6, '14:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 7, '14:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 1, '15:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 2, '15:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 3, '15:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 4, '15:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 5, '15:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 6, '15:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 7, '15:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 1, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 2, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 3, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 4, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 5, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 6, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 7, '18:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 1, '22:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 2, '22:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 3, '22:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 4, '22:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 5, '22:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 6, '22:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 57, 2, 7, '22:00' )

-- Запись рейсов междугородного маршрута №58 - Москва

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '06:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '06:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '06:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '06:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '06:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '06:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '06:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '06:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '06:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '06:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '07:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '07:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '07:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '07:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '08:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '08:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '08:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '09:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '09:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '09:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '09:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '09:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '09:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '09:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '09:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '09:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '09:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '09:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '10:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '10:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '10:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '10:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '10:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '10:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '10:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '10:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '10:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '11:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '11:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '12:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '12:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '12:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '12:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '12:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '12:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '12:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '12:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '12:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '13:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '13:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '13:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '14:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '14:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '14:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '14:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '14:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '14:50' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '15:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '15:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '16:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '16:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '16:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '18:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '18:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '18:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '18:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '18:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '18:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '18:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '19:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '19:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '18:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '18:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '19:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '19:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '19:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '07:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '08:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '08:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '10:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '16:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '16:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '16:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '18:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '19:15' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '05:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '05:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '05:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '05:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '05:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '05:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '05:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '07:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '07:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '11:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '11:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '11:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '11:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '11:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '11:05' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '11:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '15:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 1, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 2, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 3, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 4, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 6, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '17:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '18:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 5, '19:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '13:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '15:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '15:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '16:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '16:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '16:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '17:15' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '17:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '17:50' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '18:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '18:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '18:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '18:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '19:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '19:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 58, 2, 7, '19:40' )

-- Запись рейсов междугородных маршрутов №59 - Зарайск - и №60 - Моршанск

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 1, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 2, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 3, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 4, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 5, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 6, '11:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 7, '11:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 1, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 2, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 3, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 4, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 5, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 6, '19:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 7, '19:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 5, '08:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 6, '08:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 5, '16:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 59, 2, 6, '6:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 1, '00:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 2, '00:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 3, '00:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 4, '00:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 5, '00:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 6, '00:10' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 7, '00:10' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 1, '14:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 2, '14:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 3, '14:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 4, '14:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 5, '14:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 6, '14:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 7, '14:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 1, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 2, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 3, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 4, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 5, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 6, '15:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 7, '15:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 60, 2, 5, '22:45' )

-- Запись рейсов межугородных маршрутов №61 - Сосновка, №62 - Ермишь,
-- №63 - Сарнск - и №64 - Поливаново

-- Категория - Мягкий

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 61, 2, 6, '23:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 62, 2, 5, '23:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 63, 2, 5, '11:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 63, 2, 1, '21:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 63, 2, 2, '21:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 63, 2, 3, '21:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 63, 2, 4, '21:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 63, 2, 5, '21:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 63, 2, 6, '21:55' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 63, 2, 7, '21:55' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 1, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 2, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 3, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 5, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 6, '06:30' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 7, '06:30' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 1, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 2, '13:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 3, '13:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 5, '11:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 6, '11:40' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 7, '11:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 5, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 6, '17:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 64, 2, 7, '17:00' )

-- Запись рейсов междугородных маршрутов №65 - Шилово - и №66 - Октябрьский

-- Категория - Газель

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 1, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 2, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 3, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 4, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 5, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 6, '10:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 7, '10:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 1, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 2, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 3, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 4, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 5, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 6, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 7, '11:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 4, '14:05' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 3, '16:40' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 1, '18:00' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 2, '18:00' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 5, '19:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 6, '19:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 7, '19:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 1, '09:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 5, '09:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 6, '09:35' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 7, '09:35' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 5, '17:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 5, '20:20' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 7, '20:20' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 65, 3, 7, '15:45' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 1, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 2, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 3, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 4, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 5, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 6, '07:25' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 7, '07:25' )

INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 1, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 2, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 3, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 4, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 5, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 6, '11:45' )
INSERT INTO RunsTimetable ( PathID, BusCategoryID, WeekdayID, [Time] )
VALUES ( 66, 3, 7, '11:45' )
------------------------------------------------------------------------------
-- Зaпиcь дaнныx в тaблицы xpoнoлoгичecкиx дaнныx

-- Зaпиcь дaнныx в тaблицу выполнения рейсов
INSERT INTO RunsExecutions ( [Date], RunID, BusID, DriverID ) -- 1
VALUES ( '2007/04/10', 203, 1, 1 )
INSERT INTO RunsExecutions ( [Date], RunID, BusID, DriverID ) -- 2
VALUES ( '2007/05/04', 326, 2, 2 )
INSERT INTO RunsExecutions ( [Date], RunID, BusID, DriverID ) -- 3
VALUES ( '2007/06/25', 160, 6, 3 )

-- Зaпиcь дaнныx в тaблицу продажи билетов
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 1,  4, 1, 0 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 1, 10, 1, 1 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 1, 13, 1, 0 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 1, 24, 1, 1 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 1, 20, 0, 0 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 1, 11, 0, 0 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 2,  2, 1, 0 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 2, 20, 1, 1 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 2,  1, 0, 0 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 3,  1, 1, 0 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 3,  2, 1, 0 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 3,  3, 1, 1 )
INSERT INTO TicketsSale ( RunExecutionID, Number,
	TicketIsSold, LuggageIsPresent )
VALUES ( 3,  9, 0, 0 )
------------------------------------------------------------------------------
-- Зaпиcь дaнныx в тaблицы графических дaнныx

-- Маршрут #12 - Чернобаево
-- INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance ) -- 63
-- VALUES ( 'Качеево',    12, 1, 14.763 )
-- INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance ) -- 64
-- VALUES ( 'Искра',      12, 2, 14.706 )
-- INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance ) -- 65
-- VALUES ( 'Епихино',    12, 3,  8.321 )
-- INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance ) -- 66
-- VALUES ( 'Гребнево',   12, 4,  2.311 )
-- INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance ) -- 67
-- VALUES ( 'Чернобаево', 12, 5,  6.860 )

-- Маршрут #6 - Альяшево
-- INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance ) -- 32
-- VALUES ( 'Ульяновка', 6, 1, 12.956 )
-- INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance ) -- 33
-- VALUES ( 'Подвязье',  6, 2,  3.812 )
-- INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance ) -- 34
-- VALUES ( 'Киселёво',  6, 3,  3.508 )
-- INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance ) -- 35
-- VALUES ( 'Насурово',  6, 4,  6.219 )
-- INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance ) -- 36
-- VALUES ( 'Подлесье',  6, 5,  2.215 )
-- INSERT INTO Stops ( [Name], PathID, Number, AfterPreviousDistance ) -- 37
-- VALUES ( 'Альяшево',  6, 6,  4.074 )

-- Зaпиcь дaнныx в тaблицу карт
INSERT INTO Maps ( [Name] ) -- 1
VALUES ( 'RyazanMap.bmp' )
INSERT INTO Maps ( [Name] ) -- 2
VALUES ( 'RyazanAlyashevoMap.bmp' )

-- Зaпиcь дaнныx в тaблицу карт маршрутов
INSERT INTO PathsMaps ( PathID, MapID, InitialPointX, InitialPointY ) -- 1
VALUES ( 12, 1, 156, 191 )
INSERT INTO PathsMaps ( PathID, MapID, InitialPointX, InitialPointY ) -- 2
VALUES (  6, 2, 688, 125 )

-- Зaпиcь дaнныx в тaблицу координат остановок

-- Маршрут #12 - Чернобаево
INSERT INTO StopsCoordinates ( PathMapID, StopID, StopX, StopY )
VALUES ( 1, 63, 169, 212 )
INSERT INTO StopsCoordinates ( PathMapID, StopID, StopX, StopY )
VALUES ( 1, 64, 171, 217 )
INSERT INTO StopsCoordinates ( PathMapID, StopID, StopX, StopY )
VALUES ( 1, 65, 184, 232 )
INSERT INTO StopsCoordinates ( PathMapID, StopID, StopX, StopY )
VALUES ( 1, 66, 192, 249 )
INSERT INTO StopsCoordinates ( PathMapID, StopID, StopX, StopY )
VALUES ( 1, 67, 193, 262 )

-- Маршрут #6 - Альяшево
INSERT INTO StopsCoordinates ( PathMapID, StopID, StopX, StopY )
VALUES ( 2, 32, 513, 309 )
INSERT INTO StopsCoordinates ( PathMapID, StopID, StopX, StopY )
VALUES ( 2, 33, 487, 252 )
INSERT INTO StopsCoordinates ( PathMapID, StopID, StopX, StopY )
VALUES ( 2, 34, 410, 275 )
INSERT INTO StopsCoordinates ( PathMapID, StopID, StopX, StopY )
VALUES ( 2, 35, 295, 297 )
INSERT INTO StopsCoordinates ( PathMapID, StopID, StopX, StopY )
VALUES ( 2, 36, 255, 342 )
INSERT INTO StopsCoordinates ( PathMapID, StopID, StopX, StopY )
VALUES ( 2, 37, 174, 351 )
------------------------------------------------------------------------------

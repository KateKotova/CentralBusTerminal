-- Функции просмотра данных

-- Функция признака существования типа
GRANT CONTROL
	ON FN_TypeIsExist
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TypeIsExist
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция признака допустимости неопределённого значения типа
GRANT CONTROL
	ON FN_TypeIsNullable
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TypeIsNullable
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция названия базового типа для пользовательского типа
GRANT CONTROL
	ON FN_BaseTypeName
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_BaseTypeName
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция точности типа
GRANT CONTROL
	ON FN_TypePrecision
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TypePrecision
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция величины дробной части типа
GRANT CONTROL
	ON FN_TypeScale
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TypeScale
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция минимального значения типа
GRANT CONTROL
	ON FN_TypeMinimum
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TypeMinimum
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция максимального значения типа
GRANT CONTROL
	ON FN_TypeMaximum
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TypeMaximum
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция длины типа
GRANT CONTROL
	ON FN_TypeLength
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TypeLength
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция маски типа
GRANT CONTROL
	ON FN_TypeMask
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TypeMask
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция значения типа с указанным индексом
GRANT CONTROL
	ON FN_TypeValue
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TypeValue
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция количества значений типа
GRANT CONTROL
	ON FN_TypeValuesCount
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TypeValuesCount
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция значения типа по умолчанию
GRANT CONTROL
	ON FN_TypeDefault
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TypeDefault
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция заголовка таблицы в именительном падеже
GRANT CONTROL
	ON FN_NominitiveCaseTableCaption
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_NominitiveCaseTableCaption
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_NominitiveCaseTableCaption
	TO RL_Passenger

-- Функция заголовка таблицы в родительном падеже
GRANT CONTROL
	ON FN_GenitiveCaseTableCaption
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_GenitiveCaseTableCaption
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_GenitiveCaseTableCaption
	TO RL_Passenger

-- Функция заголовка строки таблицы в имнетельном падеже
GRANT CONTROL
	ON FN_NominitiveCaseTableRowCaption
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_NominitiveCaseTableRowCaption
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_NominitiveCaseTableRowCaption
	TO RL_Passenger

-- Функция заголовка строки таблицы в родительном падеже
GRANT CONTROL
	ON FN_GenitiveCaseTableRowCaption
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_GenitiveCaseTableRowCaption
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_GenitiveCaseTableRowCaption
	TO RL_Passenger

-- Функция заголовка атрибута таблицы в имнетельном падеже
GRANT CONTROL
	ON FN_NominitiveCaseTableAttributeCaption
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_NominitiveCaseTableAttributeCaption
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_NominitiveCaseTableAttributeCaption
	TO RL_Passenger

-- Функция заголовка атрибута таблицы в родительном падеже
GRANT CONTROL
	ON FN_GenitiveCaseTableAttributeCaption
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_GenitiveCaseTableAttributeCaption
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_GenitiveCaseTableAttributeCaption
	TO RL_Passenger
------------------------------------------------------------------------------
-- Функции форматирования данных

-- Функция отрицания битовой величины
GRANT CONTROL
	ON FN_BitNegation
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_BitNegation
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция строки даты формата дд.мм.гггг
GRANT CONTROL
	ON FN_DateDDMMYYYY
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_DateDDMMYYYY
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция строки даты формата гггг/мм/дд
GRANT CONTROL
	ON FN_DateYYYYMMDD
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_DateYYYYMMDD
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция строки времени формата чч:мм
GRANT CONTROL
	ON FN_TimeHHMM
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TimeHHMM
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция объединённой из года, месяца и дня строки даты формата гггг/мм/дд
GRANT CONTROL
	ON FN_UnitedDate
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_UnitedDate
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция объединённого из часов и минут строки времени формата чч:мм
GRANT CONTROL
	ON FN_UnitedTime
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_UnitedTime
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Функции сообщений

-- Функция незаконченного сообщения
GRANT CONTROL
	ON FN_UnfinishedMessage
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_UnfinishedMessage
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция сообщения о наличие атрибута таблицы
GRANT CONTROL
	ON FN_TableAttributePresenceMessage
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TableAttributePresenceMessage
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция сообщения о наличие двух атрибутов в строке таблицы
GRANT CONTROL
	ON FN_TableRowTwoAttributesPresenceMessage
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TableRowTwoAttributesPresenceMessage
	TO RL_Supervisor
	WITH GRANT OPTION

-- Функция сообщения значения атрибута таблицы
GRANT CONTROL
	ON FN_TableAttributeValueMessage
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TableAttributeValueMessage
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Функции детализации данных

-- Функция сообщения значений внешних атрибутов строки таблицы Paths
GRANT CONTROL
	ON FN_PathForeignAttributesDetails
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_PathForeignAttributesDetails
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_PathForeignAttributesDetails
	TO RL_Passenger

-- Функция сообщения значений внешних атрибутов строки таблицы Stops
GRANT CONTROL
	ON FN_StopForeignAttributesDetails
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_StopForeignAttributesDetails
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_StopForeignAttributesDetails
	TO RL_Passenger

-- Функция сообщения значений внешних атрибутов строки таблицы RunsTimetable
GRANT CONTROL
	ON FN_RunTimetableForeignAttributesDetails
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_RunTimetableForeignAttributesDetails
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_RunTimetableForeignAttributesDetails
	TO RL_Passenger

-- Функция сообщения значений внешних атрибутов строки таблицы RunsExecution
GRANT CONTROL
	ON FN_RunExecutionForeignAttributesDetails
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_RunExecutionForeignAttributesDetails
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_RunExecutionForeignAttributesDetails
	TO RL_Passenger

-- Функция сообщения значений внешних атрибутов строки таблицы TicketsSale
GRANT CONTROL
	ON FN_TicketSaleForeignAttributesDetails
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TicketSaleForeignAttributesDetails
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON FN_TicketSaleForeignAttributesDetails
	TO RL_Passenger
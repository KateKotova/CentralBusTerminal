using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Контейнер данных
	/// </summary>
	public sealed class DataContainer
	{
		#region Поля
		#region Публичные контантные поля
		/// <summary>
		/// Максимальная длина сообщения об ошибке Sql-сервера
		/// </summary>
		public const ushort SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH = 4000;
		/// <summary>
		/// Минимальный год сборщика даты
		/// </summary>
		public const ushort DATE_TIME_PICKER_MINIMUM_YEAR       = 1753;

		/// <summary>
		/// Строка нуля
		/// </summary>
		public const string ZERO_STRING                     = "0";
		/// <summary>
		/// Строка точки
		/// </summary>
		public const string POINT_STRING                    = ".";
		/// <summary>
		/// Строка двоеточия
		/// </summary>
		public const string COLON_STRING                    = ":";
		/// <summary>
		/// Заголовок сообщения об ошибке
		/// </summary>
		public const string ERROR_MESSAGE_CAPTION           = "Ошибка!";
		/// <summary>
		/// Сообщение об ошибке недействительной операции
		/// </summary>
		public const string VOID_OPERATION_ERROR_MESSAGE    =
			"Недействительная операция";
		/// <summary>
		/// Сообщение об ошибке несоответствия типу данных
		/// </summary>
		public const string INVALID_DATA_TYPE_ERROR_MESSAGE =
			"Неверный тип данных";
		/// <summary>
		/// Сообщение об ошибке неудачной загрузки карты
		/// </summary>
		public const string FAILED_MAP_LOAD_ERROR_MESSAGE   =
			"Неудачная попытка загрузки карты";
		#endregion Публичные контантные поля

		#region Приватные поля только для чтения
		/// <summary>
		/// Атрибуты подключения по умолчанию
		/// </summary>
		private readonly ConnectionAttributes _DefaultConnectionAttributes   =
			new ConnectionAttributes( 120, @"ACER\SQL", "CentralBusTerminal",
			string.Empty, string.Empty, ConnectionSecurityLevel.WINDOWS );
		/// <summary>
		/// Шрифт шапки таблицы
		/// </summary>
		private readonly Font                 _DataGridViewColumnHeadersFont =
			new Font( "Tahoma", 7.5F, System.Drawing.FontStyle.Bold );
		#endregion Приватные поля только для чтения

		#region Приватные поля
		/// <summary>
		/// Текущее состояние подключения
		/// </summary>
		private ConnectionCondition _CurrentConnectionCondition;
		/// <summary>
		/// Текущее Sql-cоединение
		/// </summary>
		private SqlConnection       _CurrentSqlConnection;

		/// <summary>
		/// Параметр кода ошибки
		/// </summary>
		private Parameter _ErrorCodeParameter          =
			new Parameter( "@errorCode" );
		/// <summary>
		/// Параметр краткого сообщения об ошибке
		/// </summary>
		private Parameter _ShortErrorMessageParameter  =
			new Parameter( "@oShortErrorMessage" );
		/// <summary>
		/// Параметр системного сообщения об ошибке
		/// </summary>
		private Parameter _SystemErrorMessageParameter =
			new Parameter( "@oSystemErrorMessage" );

		/// <summary>
		/// Единственный экземпляр контейнера данных
		/// </summary>
		private static DataContainer _Instance = null;
		#endregion Приватные поля
		#endregion Поля

		#region Методы
		/// <summary>
		/// Подключение
		/// </summary>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, VOID, FAILED,
		/// INVALID_SERVER, INVALID_DATABASE,
		/// INVALID_USER_NAME_OR_PASSWORD</returns>
		public OperationReport Connect( )
		{
			// Удаление прежнего sql-соединения
			if ( this._CurrentSqlConnection != null )
				this._CurrentSqlConnection.Dispose( );

			// Проверка возможности осуществеления нового подключения
			OperationReport report = this._CurrentConnectionCondition.Test( );
			// Если подключение осуществимо, то оно выполяется и становится текущим
			if ( report.Result == OperationResult.SUCCESSFUL )
				// Установка текущего Sql-cоединения
				this._CurrentSqlConnection = new SqlConnection
					( this._CurrentConnectionCondition.Attributes.
					ConnectionString( ) );

			// Возврат результата проверки возможности осуществления подключения
			return report;
		} // Connect

		/// <summary>
		/// Функция cтpoки дaты в формате дд.мм.гггг,
		/// отображающей день, мecяц и гoд, зaпиcaнные чepeз точку,
		/// бeз часов, минут, ceкумнд, миллиceкунд и микpoceкунд
		/// </summary>
		/// <param name="parDate">Дaтa</param>
		/// <returns>Строка даты</returns>
		public static string DateDDMMYYYYStringByMeansOfPoint( DateTime parDate )
		{
			// Строка дня
			string dayString   = parDate.Day.ToString( );
			while( dayString.Length   < 2 )
				dayString   = DataContainer.ZERO_STRING + dayString;

			// Строка месяца
			string monthString = parDate.Month.ToString( );
			while( monthString.Length < 2 )
				monthString = DataContainer.ZERO_STRING + monthString;

			// Строка года
			string yearString  = parDate.Year.ToString( );
			while( yearString.Length  < 4 )
				yearString  = DataContainer.ZERO_STRING + yearString;

			return
				dayString                  +
				DataContainer.POINT_STRING +
				monthString                +
				DataContainer.POINT_STRING +
				yearString;
		} // DateDDMMYYYYStringByMeansOfPoint

		/// <summary>
		/// Функция cтpoки времени в формате чч:мм,
		/// отображающей часы и минуты, зaпиcaнные чepeз двоеточие,
		/// бeз года, месяца, дня, ceкумнд, миллиceкунд и микpoceкунд
		/// </summary>
		/// <param name="parTime">Время</param>
		/// <returns>Строка времени</returns>
		public static string TimeHHMMStringByMeansOfColon( DateTime parTime )
		{
			// Строка часов
			string hourString   = parTime.Hour.ToString( );
			while( hourString.Length   < 2 )
				hourString   = DataContainer.ZERO_STRING + hourString;

			// Строка минут
			string minuteString = parTime.Minute.ToString( );
			while( minuteString.Length < 2 )
				minuteString = DataContainer.ZERO_STRING + minuteString;

			return
				hourString                 +
				DataContainer.COLON_STRING +
				minuteString;
		} // TimeHHMMStringByMeansOfColon

		/// <summary>
		/// Инициализация единственного экземпляра контейнера данных
		/// </summary>
		/// <returns>Есдинственный экземпляр контейнера данных</returns>
		public static DataContainer Instance( )
		{
			if ( _Instance == null )
				_Instance = new DataContainer( );

			return _Instance;
		} // Instance
		#endregion Методы

		/// <summary>
		/// Скрытое создание контейнера данных
		/// </summary>
		private DataContainer( )
		{
			// Текщее состояние подключения с атрибутами по умолчанию
			this._CurrentConnectionCondition = new ConnectionCondition
				( this._DefaultConnectionAttributes );

			// Sql-параметры
			// Параметр кода ошибки - целое число, возвращаемое значение
			this._ErrorCodeParameter.InitializeInt( ParameterDirection.ReturnValue,
				false, string.Empty );
			// Параметр краткого сообщения об ошибке   - строка, параметр вывода
			this._ShortErrorMessageParameter.InitializeNVarChar
				( ParameterDirection.Output, false,
				DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
			// Параметр системного сообщения об ошибке - строка, параметр вывода
			this._SystemErrorMessageParameter.InitializeNVarChar
				( ParameterDirection.Output, false,
				DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
		} // DataContainer

		#region Свойства
		/// <summary>
		/// Атрибуты подключения по умолчанию
		/// </summary>
		public ConnectionAttributes DefaultConnectionAttributes
		{
			get
			{
				return this._DefaultConnectionAttributes;
			} // get
		} // DefaultConnectionAttributes

		/// <summary>
		/// Шрифт шапки таблицы
		/// </summary>
		public Font DataGridViewColumnHeadersFont
		{
			get
			{
				return this._DataGridViewColumnHeadersFont;
			} // get
		} // DataGridViewColumnHeadersFont

		#region Характеристики подключения
		/// <summary>
		/// Атрибуты текущего подключения
		/// </summary>
		public ConnectionAttributes CurrentConnectionAttributes
		{
			get
			{
				return this._CurrentConnectionCondition.Attributes;
			} // get
			set
			{
				this._CurrentConnectionCondition.Attributes = value;
			} // set
		} // CurrentConnectionAttributes

		/// <summary>
		/// Текущее Sql-cоединение
		/// </summary>
		public SqlConnection CurrentSqlConnection
		{
			get
			{
				return this._CurrentSqlConnection;
			} // get
		} // CurrentSqlConnection
		#endregion Характеристики подключения

		#region Sql-параметры
		/// <summary>
		/// Sql-параметр кода ошибки
		/// </summary>
		public SqlParameter ErrorCodeParameter
		{
			get
			{
				return this._ErrorCodeParameter.SqlParameterView;
			} // get
		} // ErrorCodeParameter

		/// <summary>
		/// Sql-параметр краткого сообщения об ошибке
		/// </summary>
		public SqlParameter ShortErrorMessageParameter
		{
			get
			{
				return this._ShortErrorMessageParameter.SqlParameterView;
			} // get
		} // ShortErrorMessageParameter

		/// <summary>
		/// Sql-параметр системного сообщения об ошибке
		/// </summary>
		public SqlParameter SystemErrorMessageParameter
		{
			get
			{
				return this._SystemErrorMessageParameter.SqlParameterView;
			} // get
		} // SystemErrorMessageParameter
		#endregion Sql-параметры
		#endregion Свойства
	} // DataContainer
} // CentralBusTerminalClient
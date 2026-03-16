using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Найденная остановка
	/// </summary>
	public class FoundStop : Entity
	{
		#region Поля
		/// <summary>
		/// Заголовок сущности
		/// </summary>
		new public const string ENTITY_CAPTION = "Найденная остановка";

		#region Названия хранимых процедур
		/// <summary>
		/// Название хранимой процедуры показа
		/// </summary>
		new public const string SHOW_PROCEDURE_NAME   = "SP_ShowFoundStops";
		/// <summary>
		/// Название хранимой процедуры установки
		/// </summary>
		new protected const string SET_PROCEDURE_NAME = "SP_SetStopsSearch";

		/// <summary>
		/// Название хранимой процедуры показа категорий автобусов
		/// </summary>
		protected const string SHOW_BUSES_CATEGORIES_PROCEDURE_NAME =
			"SP_ShowBusesCategories";
		/// <summary>
		/// Название хранимой процедуры показа дней недели
		/// </summary>
		protected const string SHOW_WEEKDAYS_PROCEDURE_NAME = "SP_ShowWeekdays";
		#endregion Названия хранимых процедур

		#region Названия таблиц сущностей
		/// <summary>
		/// Название таблицы найденных остановок
		/// </summary>
		protected readonly string _FoundStopsDataSetTableName;
		/// <summary>
		/// Название таблицы категорий автобусов
		/// </summary>
		protected readonly string _BusesCategoriesDataSetTableName;
		/// <summary>
		/// Название таблицы дней недели
		/// </summary>
		protected readonly string _WeekdaysDataSetTableName;
		#endregion Названия таблиц сущностей

		#region Адаптеры Sql-данных
		/// <summary>
		/// Адаптер Sql-данных найденных остановок
		/// </summary>
		protected SqlDataAdapter _FoundStopsSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных категорий автобусов
		/// </summary>
		protected SqlDataAdapter _BusesCategoriesSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных дней недели
		/// </summary>
		protected SqlDataAdapter _WeekdaysSqlDataAdapter;
		#endregion Адаптеры Sql-данных

		#region Параметры
		/// <summary>
		/// Подстрока названия
		/// </summary>
		protected Parameter _NameSubstring = new Parameter("@ioNameSubstring");
		/// <summary>
		/// Категория автобуса
		/// </summary>
		protected Parameter _BusCategory   = new Parameter("@ioBusCategoryName");
		/// <summary>
		/// День недели
		/// </summary>
		protected Parameter _Weekday       = new Parameter("@ioWeekdayName");
		#endregion Параметры
		#endregion Поля

		#region Методы
		#region Методы инициализации и очистки
		/// <summary>
		/// Заполнение адаптера Sql-данных найденных остановок
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		/// <returns>Отчёт операции с результатами: SUCCESSFUL, VOID</returns>
		protected virtual OperationResult FillFoundStopsSqlDataAdapter
			( ref CentralBusTerminalDataSet parDataSet )
		{
			// Открытие соединения в случае его непреднамеренного закрытия
			if ( DataContainer.Instance( ).CurrentSqlConnection.State !=
					ConnectionState.Open )
				DataContainer.Instance( ).CurrentSqlConnection.Open( );

			using ( SqlCommand command = new SqlCommand
				( FoundStop.SHOW_PROCEDURE_NAME,
				DataContainer.Instance( ).CurrentSqlConnection ) )
			{
				// Команда выполняет хранимую процедуру
				command.CommandType               = CommandType.StoredProcedure;
				// Хранимая процедура
				SqlCommand storedProcedureCommand = command;

				try
				{
					// Запись параметров
					this.AddStoredProcedureParameters( ref storedProcedureCommand );

					// Удаление прежнего адаптера Sql-данных найденных остановок
					if ( this._FoundStopsSqlDataAdapter != null )
						this._FoundStopsSqlDataAdapter.Dispose( );
					// Установка нового адаптера Sql-данных найденных остановок
					this._FoundStopsSqlDataAdapter = new SqlDataAdapter
						( storedProcedureCommand );
					// Заплнение адаптера Sql-данных найденных остановок
					this._FoundStopsSqlDataAdapter.Fill
						( parDataSet, this._FoundStopsDataSetTableName );

					// Очистка параметров команды необходима, ибо при повторной
					// попытке будет сигнал существования вышеуказанных параметров
					storedProcedureCommand.Parameters.Clear( );
					storedProcedureCommand.Dispose( );
				} // try

				// Недействительная операция
				catch ( Exception e )
				{
					// Очистка параметров команды необходима, ибо при повторной
					// попытке будет сигнал существования вышеуказанных параметров
					if ( storedProcedureCommand.Parameters.Count != 0 )
					{
						storedProcedureCommand.Parameters.Clear( );
						storedProcedureCommand.Dispose( );
					} // if

					MessageBox.Show( DataContainer.VOID_OPERATION_ERROR_MESSAGE +
						DataContainer.COLON_STRING + e.Message,
						DataContainer.ERROR_MESSAGE_CAPTION, MessageBoxButtons.OK,
						MessageBoxIcon.Error );
					// Неуспешное выполнение операции
					return OperationResult.VOID;
				} // catch
			} // using

			// Успешное выполнение операции
			return OperationResult.SUCCESSFUL;
		} // FillFoundStopsSqlDataAdapter

		/// <summary>
		/// Заполнение адаптера Sql-данных сущности
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		public override void FillEntitySqlDataAdapter
			( ref CentralBusTerminalDataSet parDataSet )
		{
			// Заполнение адаптеров Sql-данных в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					// Смена направления параметров для устновки - входные параметры
					this.ChangeStoredProcedureParametersDirection
						( ParameterDirection.Input );
					// Заполнение адаптера Sql-данных найденных остановок
					this.FillFoundStopsSqlDataAdapter( ref parDataSet );

					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter.Fill( parDataSet,
						this._BusesCategoriesDataSetTableName );
					// Адаптер Sql-данных дней недели
					this._WeekdaysSqlDataAdapter.Fill       ( parDataSet,
						this._WeekdaysDataSetTableName );
					break;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // FillSqlDataAdapters

		/// <summary>
		/// Инициализация параметров с заднным направлением
		/// </summary>
		/// <param name="parDirection">Направление</param>
		public virtual void Initialize( ParameterDirection parDirection )
		{
			// Направление параметров
			ParameterDirection direction  = parDirection;
			// Допустимость неопределённого значения параметров
			bool               isNullable = false;

			// Инициализация параметров в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					this._NameSubstring.InitializeNVarChar( direction, isNullable,
						50, string.Empty );
					this._BusCategory.InitializeNVarChar  ( direction, isNullable,
						10, string.Empty );
					this._Weekday.InitializeNVarChar      ( direction, isNullable,
						15, string.Empty );
					return;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // Initialize

		/// <summary>
		/// Инициализация параметров ввода-вывода
		/// </summary>
		public virtual void Initialize( )
		{
			this.Initialize( ParameterDirection.InputOutput );
		} // Initialize

		/// <summary>
		/// Очистка
		/// </summary>
		public override void Clear( )
		{
			// Очистка параметров в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					this._NameSubstring.Clear( );
					this._BusCategory.Clear( );
					this._Weekday.Clear( );
					return;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // Clear
		#endregion Методы инициализации и очистки

		#region Методы загрузки параметров хранимых процедур
		/// <summary>
		/// Загрузка параметров хранимой процедуры установки
		/// </summary>
		/// <param name="parNameSubstring">Подстрока названия</param>
		/// <param name="parBusCategory">Категория автобуса</param>
		/// <param name="parWeekday">День недели</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL,
		/// INVALID_STOP_NAME_SUBSTRING, INVALID_BUS_CATEGORY,
		/// INVALID_WEEKDAY</returns>
		public virtual OperationReport LoadSetStoredProcedureParameters
		(
			string parNameSubstring,
			string parBusCategory,
			string parWeekday
		)
		{
			// Установка подстроки названия
			if ( this._NameSubstring.SetValue( parNameSubstring ) !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_STOP_NAME_SUBSTRING,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка катогории автобуса
			if ( this._BusCategory.SetValue( parBusCategory )     !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CATEGORY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка дня недели
			if ( this._Weekday.SetValue( parWeekday )             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_WEEKDAY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Успешное завершение операции
			return new OperationReport( );
		} // LoadSetStoredProcedureParameters

		/// <summary>
		/// Смена направления параметров хранимой процедуры
		/// </summary>
		/// <param name="parDirection">Направление параметра</param>
		public virtual void ChangeStoredProcedureParametersDirection
			( ParameterDirection parDirection )
		{
			// Сохранние значений параметров
			string nameSubstring = this._NameSubstring.ValueString;
			string busCategory   = this._BusCategory.ValueString;
			string weekday       = this._Weekday.ValueString;

			// Инициализация параметров с прежними знчениями и новым направлением
			this.Initialize( parDirection );
			this.LoadSetStoredProcedureParameters
				( nameSubstring, busCategory, weekday );
		} // ChangeStoredProcedureParametersDirection
		#endregion Методы загрузки параметров хранимых процедур

		#region Методы добавления и вывода параметров хранимых процедур
		/// <summary>
		/// Добавление параметров хранимой процедуры
		/// </summary>
		/// <param name="parStoredProcedure">Хранимая процедура</param>
		protected override void AddStoredProcedureParameters
			( ref SqlCommand parStoredProcedure )
		{
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					// Подстрока названия
					parStoredProcedure.Parameters.Add
						( this._NameSubstring.SqlParameterView );
					// Категория автобуса
					parStoredProcedure.Parameters.Add
						( this._BusCategory.SqlParameterView );
					// День недели
					parStoredProcedure.Parameters.Add
						( this._Weekday.SqlParameterView );
					break;

				// Прочие непредусмотренные процедуры
				default:
					break;
			} // switch
		} // AddStoredProcedureParameters

		/// <summary>
		/// Вывод параметров хранимой процедуры
		/// </summary>
		/// <param name="parStoredProcedure">Хранимая процедура</param>
		protected override void OutputStoredProcedureParameters
			( SqlCommand parStoredProcedure )
		{
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					// Подстрока названия
					this._NameSubstring.Value =
						parStoredProcedure.Parameters[ 0 ].Value;
					// Категория автобуса
					this._BusCategory.Value = parStoredProcedure.Parameters[ 1 ].Value;
					// День недели
					this._Weekday.Value     = parStoredProcedure.Parameters[ 2 ].Value;
					break;

				// Прочие непредусмотренные процедуры
				default:
					break;
			} // switch
		} // OutputStoredProcedureParameters
		#endregion Методы добавления и вывода параметров хранимых процедур

		#region Методы выполнения хранимых процедур
		/// <summary>
		/// Выполнение хранимой процедуры
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		/// <param name="parErrorsMessagesAreUsed">
		/// Признак использования сообщений об ошибках</param>
		/// <param name="parSystemErrorMessageIsUsed">
		/// Признак использования системного сообщения об ошибке</param>
		public override void ExecuteStoredProcedure
		(
			ref CentralBusTerminalDataSet parDataSet,
			bool                          parErrorsMessagesAreUsed,
			bool                          parSystemErrorMessageIsUsed
		)
		{
			// Смена направления параметров для устновки - параметры ввода-вывода
			this.ChangeStoredProcedureParametersDirection
				( ParameterDirection.InputOutput );

			// Выполнение хранимой процедуры
			base.ExecuteStoredProcedure( ref parDataSet, parErrorsMessagesAreUsed,
				parSystemErrorMessageIsUsed );
		} // ExecuteStoredProcedure
		#endregion Методы выполнения хранимых процедур
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание найденой остановки по умолчанию
		/// </summary>
		public FoundStop( )
		{
			// Установка неизвестного текущего действия
			this._CurrentAction = StoredProcedureAction.UNKNOWN;
			// Пустые названия таблиц сущностей
			this._FoundStopsDataSetTableName      = string.Empty;
			this._BusesCategoriesDataSetTableName = string.Empty;
			this._WeekdaysDataSetTableName        = string.Empty;
		} // FoundStop

		/// <summary>
		/// Создание найденой остановки c заданным действием хранимой процедуры
		/// и названиями таблиц сущностей
		/// </summary>
		/// <param name="parAction">Действие</param>
		/// <param name="parDataSet">Множество данных</param>
		/// <param name="parFoundStopsDataSetTableName">
		/// Название таблицы найденных остановок</param>
		/// <param name="parBusesCategoriesDataSetTableName">
		/// Название таблицы категорий автобусов</param>
		/// <param name="parWeekdaysDataSetTableName">
		/// Название таблицы дней недели</param>
		public FoundStop
		(
			StoredProcedureAction         parAction,
			ref CentralBusTerminalDataSet parDataSet,
			string                        parFoundStopsDataSetTableName,
			string                        parBusesCategoriesDataSetTableName,
			string                        parWeekdaysDataSetTableName
		)
		{
			// Установка текущего действия
			this._CurrentAction = parAction;
			// Инициализация названий таблиц сущностей
			this._FoundStopsDataSetTableName = parFoundStopsDataSetTableName;
			this._BusesCategoriesDataSetTableName =
				parBusesCategoriesDataSetTableName;
			this._WeekdaysDataSetTableName   = parWeekdaysDataSetTableName;

			// Инициализация адаптеров Sql-данных в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter = new SqlDataAdapter
						( new SqlCommand( FoundStop.SHOW_BUSES_CATEGORIES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных дней недели
					this._WeekdaysSqlDataAdapter        = new SqlDataAdapter
						( new SqlCommand( FoundStop.SHOW_WEEKDAYS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );

					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter.Fill( parDataSet,
						this._BusesCategoriesDataSetTableName );
					// Адаптер Sql-данных дней недели
					this._WeekdaysSqlDataAdapter.Fill       ( parDataSet,
						this._WeekdaysDataSetTableName );
					break;

				// Прочие непредусмотренные процедуры
				default :
					break;
			} // switch

			// Инициализация
			this.Initialize( );
		} // FoundStop
		#endregion Конструкторы

		#region Свойства
		/// <summary>
		/// Название хранимой процедуры текущего действия
		/// </summary>
		public override string CurrentActionStoredProcedureName
		{
			get
			{
				switch ( this._CurrentAction )
				{
					// Показ
					case StoredProcedureAction.SHOW :
						return FoundStop.SHOW_PROCEDURE_NAME;

					// Установка
					case StoredProcedureAction.SET :
						return FoundStop.SET_PROCEDURE_NAME;

					// Добавление
					case StoredProcedureAction.INSERT :
						return FoundStop.INSERT_PROCEDURE_NAME;

					// Обновление
					case StoredProcedureAction.UPDATE :
						return FoundStop.UPDATE_PROCEDURE_NAME;

					// Удаление
					case StoredProcedureAction.DELETE :
						return FoundStop.DELETE_PROCEDURE_NAME;

					// Прочие непредусмотренные процедуры
					default :
						return string.Empty;
				} // switch
			} // get
		} // CurrentActionStoredProcedureName

		#region Названия таблиц сущностей
		/// <summary>
		/// Название таблицы найденных остановок
		/// </summary>
		public virtual string FoundStopsDataSetTableName
		{
			get
			{
				return this._FoundStopsDataSetTableName;
			} // get
		} // FoundStopsDataSetTableName

		/// <summary>
		/// Название таблицы категорий автобусов
		/// </summary>
		public virtual string BusesCategoriesDataSetTableName
		{
			get
			{
				return this._BusesCategoriesDataSetTableName;
			} // get
		} // BusesCategoriesDataSetTableName

		/// <summary>
		/// Название таблицы дней недели
		/// </summary>
		public virtual string WeekdaysDataSetTableName
		{
			get
			{
				return this._WeekdaysDataSetTableName;
			} // get
		} // WeekdaysDataSetTableName
		#endregion Названия таблиц сущностей

		#region Строки значений Sql-параметров
		/// <summary>
		/// Подстрока названия
		/// </summary>
		public virtual string NameSubstring
		{
			get
			{
				return this._NameSubstring.ValueString;
			} // get
		} // NameSubstring

		/// <summary>
		/// Категория автобуса
		/// </summary>
		public virtual string BusCategory
		{
			get
			{
				return this._BusCategory.ValueString;
			} // get
		} // BusCategory

		/// <summary>
		/// День недели
		/// </summary>
		public virtual string Weekday
		{
			get
			{
				return this._Weekday.ValueString;
			} // get
		} // Weekday
		#endregion Строки значений Sql-параметров
		#endregion Свойства
	} // FoundStop
} // CentralBusTerminalClient
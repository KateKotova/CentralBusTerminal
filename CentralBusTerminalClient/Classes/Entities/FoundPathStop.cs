using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Найденная остановка маршрута
	/// </summary>
	public class FoundPathStop : Entity
	{
		#region Поля
		/// <summary>
		/// Заголовок сущности
		/// </summary>
		new public const string ENTITY_CAPTION = "Найденная остановка маршрута";

		#region Названия хранимых процедур
		/// <summary>
		/// Название хранимой процедуры показа
		/// </summary>
		new public const string SHOW_PROCEDURE_NAME   = "SP_ShowFoundPathStops";
		/// <summary>
		/// Название хранимой процедуры установки
		/// </summary>
		new protected const string SET_PROCEDURE_NAME = "SP_SetPathStopsSearch";

		/// <summary>
		/// Название хранимой процедуры показа маршрутов
		/// </summary>
		protected  const string SHOW_PATHS_PROCEDURE_NAME = "SP_ShowPaths";
		#endregion Названия хранимых процедур

		#region Названия таблиц сущностей
		/// <summary>
		/// Название таблицы найденных остановок маршрута
		/// </summary>
		protected readonly string _FoundPathStopsDataSetTableName;
		/// <summary>
		/// Название таблицы маршрутов
		/// </summary>
		protected readonly string _PathsDataSetTableName;
		#endregion Названия таблиц сущностей

		#region Адаптеры Sql-данных
		/// <summary>
		/// Адаптер Sql-данных найденных остановок маршрута
		/// </summary>
		protected SqlDataAdapter _FoundPathStopsSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных маршрутов
		/// </summary>
		protected SqlDataAdapter _PathsSqlDataAdapter;
		#endregion Адаптеры Sql-данных

		/// <summary>
		/// Маршрут
		/// </summary>
		protected Parameter _Path = new Parameter("@ioPathName");
		#endregion Поля

		#region Методы
		#region Методы инициализации и очистки
		/// <summary>
		/// Заполнение адаптера Sql-данных найденных остановок маршрута
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		/// <returns>Отчёт операции с результатами: SUCCESSFUL, VOID</returns>
		protected virtual OperationResult FillFoundPathStopsSqlDataAdapter
			( ref CentralBusTerminalDataSet parDataSet )
		{
			// Открытие соединения в случае его непреднамеренного закрытия
			if ( DataContainer.Instance( ).CurrentSqlConnection.State !=
					ConnectionState.Open )
				DataContainer.Instance( ).CurrentSqlConnection.Open( );

			using ( SqlCommand command = new SqlCommand
				( FoundPathStop.SHOW_PROCEDURE_NAME,
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

					// Удаление прежнего адаптера Sql-данных
					// найденных остановок маршрута
					if ( this._FoundPathStopsSqlDataAdapter != null )
						this._FoundPathStopsSqlDataAdapter.Dispose( );
					// Установка нового адаптера Sql-данных
					// найденных остановок маршрута
					this._FoundPathStopsSqlDataAdapter = new SqlDataAdapter
						( storedProcedureCommand );
					// Заплнение адаптера Sql-данных найденных остановок маршрута
					this._FoundPathStopsSqlDataAdapter.Fill
						( parDataSet, this._FoundPathStopsDataSetTableName );

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
		} // FillFoundPathStopsSqlDataAdapter

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
					// Заполнение адаптера Sql-данных найденных остановок маршрута
					this.FillFoundPathStopsSqlDataAdapter( ref parDataSet );
					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter.Fill( parDataSet,
						this._PathsDataSetTableName );
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
			// Инициализация параметров в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					this._Path.InitializeNVarChar( parDirection, false,
						50, string.Empty );
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
					this._Path.Clear( );
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
		/// <param name="parPath">Маршрут</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL,
		/// INVALID_PATH</returns>
		public virtual OperationReport LoadSetStoredProcedureParameters
			( string parPath )
		{
			// Установка маршрута
			if ( this._Path.SetValue( parPath ) != OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_PATH,
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
			string path = this._Path.ValueString;

			// Инициализация параметров с прежними знчениями и новым направлением
			this.Initialize( parDirection );
			this.LoadSetStoredProcedureParameters( path );
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
					// Маршрут
					parStoredProcedure.Parameters.Add( this._Path.SqlParameterView );
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
					// Маршрут
					this._Path.Value = parStoredProcedure.Parameters[ 0 ].Value;
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
		/// Создание найденой остановки маршрута по умолчанию
		/// </summary>
		public FoundPathStop( )
		{
			// Установка неизвестного текущего действия
			this._CurrentAction = StoredProcedureAction.UNKNOWN;
			// Пустые названия таблиц сущностей
			this._FoundPathStopsDataSetTableName = string.Empty;
			this._PathsDataSetTableName          = string.Empty;
		} // FoundPathStop

		/// <summary>
		/// Создание найденой остановки маршрута
		/// c заданным действием хранимой процедуры и названиями таблиц сущностей
		/// </summary>
		/// <param name="parAction">Действие</param>
		/// <param name="parDataSet">Множество данных</param>
		/// <param name="parFoundPathStopsDataSetTableName">
		/// Название таблицы найденных остановок маршрута</param>
		/// <param name="parPathsDataSetTableName">
		/// Название таблицы маршрутов</param>
		public FoundPathStop
		(
			StoredProcedureAction         parAction,
			ref CentralBusTerminalDataSet parDataSet,
			string                        parFoundPathStopsDataSetTableName,
			string                        parPathsDataSetTableName
		)
		{
			// Установка текущего действия
			this._CurrentAction = parAction;
			// Инициализация названий таблиц сущностей
			this._FoundPathStopsDataSetTableName =
				parFoundPathStopsDataSetTableName;
			this._PathsDataSetTableName          = parPathsDataSetTableName;

			// Инициализация адаптеров Sql-данных в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter = new SqlDataAdapter
						( new SqlCommand( FoundPathStop.SHOW_PATHS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					this._PathsSqlDataAdapter.Fill( parDataSet,
						this._PathsDataSetTableName );
					break;

				// Прочие непредусмотренные процедуры
				default :
					break;
			} // switch

			// Инициализация
			this.Initialize( );
		} // FoundPathStop
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
						return FoundPathStop.SHOW_PROCEDURE_NAME;

					// Установка
					case StoredProcedureAction.SET :
						return FoundPathStop.SET_PROCEDURE_NAME;

					// Добавление
					case StoredProcedureAction.INSERT :
						return FoundPathStop.INSERT_PROCEDURE_NAME;

					// Обновление
					case StoredProcedureAction.UPDATE :
						return FoundPathStop.UPDATE_PROCEDURE_NAME;

					// Удаление
					case StoredProcedureAction.DELETE :
						return FoundPathStop.DELETE_PROCEDURE_NAME;

					// Прочие непредусмотренные процедуры
					default :
						return string.Empty;
				} // switch
			} // get
		} // CurrentActionStoredProcedureName

		#region Названия таблиц сущностей
		/// <summary>
		/// Название таблицы найденных остановок маршрута
		/// </summary>
		public virtual string FoundPathStopsDataSetTableName
		{
			get
			{
				return this._FoundPathStopsDataSetTableName;
			} // get
		} // FoundPathStopsDataSetTableName

		/// <summary>
		/// Название таблицы маршрутов
		/// </summary>
		public virtual string PathsDataSetTableName
		{
			get
			{
				return this._PathsDataSetTableName;
			} // get
		} // PathsDataSetTableName
		#endregion Названия таблиц сущностей

		/// <summary>
		/// Маршрут
		/// </summary>
		public virtual string Path
		{
			get
			{
				return this._Path.ValueString;
			} // get
		} // Path
		#endregion Свойства
	} // FoundPathStop
} // CentralBusTerminalClient
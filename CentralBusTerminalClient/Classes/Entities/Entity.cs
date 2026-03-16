using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Сущность
	/// </summary>
	public abstract class Entity : IClearAble
	{
		#region Поля
		/// <summary>
		/// Заголовок сущности
		/// </summary>
		public const string                ENTITY_CAPTION = "Сущность";
		/// <summary>
		/// Текущее действие хранимой процедуры
		/// </summary>
		protected    StoredProcedureAction _CurrentAction;

		#region Заголовки действий
		/// <summary>
		/// Заголовок действия показа
		/// </summary>
		protected const string SHOW_ACTION_CAPTION   = "Показать";
		/// <summary>
		/// Заголовок действия установки
		/// </summary>
		protected const string SET_ACTION_CAPTION    = "Установить";
		/// <summary>
		/// Заголовок действия добавления
		/// </summary>
		protected const string INSERT_ACTION_CAPTION = "Добавить";
		/// <summary>
		/// Заголовок действия обновления
		/// </summary>
		protected const string UPDATE_ACTION_CAPTION = "Обновить";
		/// <summary>
		/// Заголовок действия удаления
		/// </summary>
		protected const string DELETE_ACTION_CAPTION = "Удалить";
		#endregion Заголовки действий

		#region Названия хранимых процедур
		/// <summary>
		/// Название хранимой процедуры показа
		/// </summary>
		public const string    SHOW_PROCEDURE_NAME   = null;

		/// <summary>
		/// Название хранимой процедуры установки
		/// </summary>
		protected const string SET_PROCEDURE_NAME    = null;
		/// <summary>
		/// Название хранимой процедуры добавления
		/// </summary>
		protected const string INSERT_PROCEDURE_NAME = null;
		/// <summary>
		/// Название хранимой процедуры обновления
		/// </summary>
		protected const string UPDATE_PROCEDURE_NAME = null;
		/// <summary>
		/// Название хранимой процедуры удаления
		/// </summary>
		protected const string DELETE_PROCEDURE_NAME = null;
		#endregion Названия хранимых процедур
		#endregion Поля

		#region Методы
		#region Методы инициализации и очистки
		/// <summary>
		/// Заполнение адаптера Sql-данных сущности
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		public abstract void FillEntitySqlDataAdapter
			( ref CentralBusTerminalDataSet parDataSet );

		/// <summary>
		/// Обновление данных адаптеров Sql-данных
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		public virtual void RefreshSqlDataAdapters
			( ref CentralBusTerminalDataSet parDataSet )
		{
			// Очиста необходима, так как метод SqlDataAdapter.Fill
			// не удаляет строки, удалёные из базы данных без вмешательства
			// данного приложения, хотя при вызове "поверх" существующих строк,
			// обновляет их содержимое в соответствии с первичным ключом
			parDataSet.Clear( );
			// Заполнение адаптера Sql-данных сущности
			this.FillEntitySqlDataAdapter( ref parDataSet );
		} // RefreshSqlDataAdapters

		/// <summary>
		/// Инициализация
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		public virtual void Initialize
			( ref CentralBusTerminalDataSet parDataSet )
		{
			// Заполнение адаптера Sql-данных сущности
			this.FillEntitySqlDataAdapter( ref parDataSet );
		} // Initialize

		/// <summary>
		/// Очистка
		/// </summary>
		public virtual void Clear( )
		{
		} // Clear
		#endregion Методы инициализации и очистки

		#region Методы добавления и вывода параметров хранимых процедур
		/// <summary>
		/// Добавление параметров хранимой процедуры
		/// </summary>
		/// <param name="parStoredProcedure">Хранимая процедура</param>
		protected abstract void AddStoredProcedureParameters
			( ref SqlCommand parStoredProcedure );

		/// <summary>
		/// Вывод параметров хранимой процедуры
		/// </summary>
		/// <param name="parStoredProcedure">Хранимая процедура</param>
		protected abstract void OutputStoredProcedureParameters
			( SqlCommand parStoredProcedure );
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
		public virtual void ExecuteStoredProcedure
		(
			ref CentralBusTerminalDataSet parDataSet,
			bool                          parErrorsMessagesAreUsed,
			bool                          parSystemErrorMessageIsUsed
		)
		{
			// Открытие соединения в случае его непреднамеренного закрытия
			if ( DataContainer.Instance( ).CurrentSqlConnection.State !=
					ConnectionState.Open )
				DataContainer.Instance( ).CurrentSqlConnection.Open( );

			// Название хранимой процедуры
			string storedProcedureName = this.CurrentActionStoredProcedureName;

			using ( SqlCommand command = new SqlCommand( storedProcedureName,
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

					// Если используются сообщения об ошибках,
					// то они добавляются в качестве параметров
					if ( parErrorsMessagesAreUsed )
					{
						// Краткое сообщение об ошибке
						storedProcedureCommand.Parameters.Add
							( DataContainer.Instance( ).ShortErrorMessageParameter );

						// Если используется системное сообщение об ошибке,
						// то оно добавляется в качестве параметра
						if ( parSystemErrorMessageIsUsed )
							// Системное сообщение об ошибке
							storedProcedureCommand.Parameters.Add
								( DataContainer.Instance( ).SystemErrorMessageParameter );

						// Код ошибки
						storedProcedureCommand.Parameters.Add
							( DataContainer.Instance( ).ErrorCodeParameter );
					} // if

					// Признак желательности обновления адаптеров Sql-данных
					// в случае такой возможности
					bool shouldRefreshSqlDataAdapters = false;
					// Выполенине команды
					using ( SqlDataReader reader =
						storedProcedureCommand.ExecuteReader( ) )
					{
						// Чтение первой записи
						reader.Read( );

						// Вывод параметров
						OutputStoredProcedureParameters( storedProcedureCommand );
						// Необходимость обновления адаптеров Sql-данных
						// в случае заведомо безошибочной или удачной операции
						if
						(
							( this._CurrentAction != StoredProcedureAction.SET ) &&
							(
								( ! parErrorsMessagesAreUsed ) ||
								( Convert.ToInt32( DataContainer.Instance( ).
									ErrorCodeParameter.Value ) == 0 )
							)
						)
							shouldRefreshSqlDataAdapters = true;

						// Окончание чтения
						reader.Close( );
					} // using

					// Очистка параметров команды необходима, ибо при повторной
					// попытке будет сигнал существования вышеуказанных параметров
					storedProcedureCommand.Parameters.Clear( );
					storedProcedureCommand.Dispose( );

					// Обновление адаптеров Sql-данных в случае необходимости
					// и возможности
					if ( shouldRefreshSqlDataAdapters )
						this.RefreshSqlDataAdapters( ref parDataSet );
				} // try

				// Недействительная операция
				catch ( Exception e )
				{
					MessageBox.Show( DataContainer.VOID_OPERATION_ERROR_MESSAGE +
						DataContainer.COLON_STRING + e.Message,
						DataContainer.ERROR_MESSAGE_CAPTION, MessageBoxButtons.OK,
						MessageBoxIcon.Error);
				} // catch
			} // using
		} // ExecuteStoredProcedure
		#endregion Методы выполнения хранимых процедур
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание сущности по умолчанию
		/// </summary>
		public Entity( )
		{
			// Установка неизвестного текущего действия
			this._CurrentAction = StoredProcedureAction.UNKNOWN;
		} // Entity

		/// <summary>
		/// Создание сущности с заданным действием хранимой процедуры
		/// </summary>
		/// <param name="parAction">Действие</param>
		/// <param name="parDataSet">Множество данных</param>
		public Entity
		(
			StoredProcedureAction         parAction,
			ref CentralBusTerminalDataSet parDataSet
		)
		{
			// Установка текущего действия
			this._CurrentAction = parAction;
			// Инициализация
			this.Initialize( ref parDataSet );
		} // Entity
		#endregion Конструкторы

		#region Свойства
		/// <summary>
		/// Текущее действие хранимой процедуры
		/// </summary>
		public virtual StoredProcedureAction CurrentAction
		{
			get
			{
				return this._CurrentAction;
			} // get
		} // CurrentAction

		/// <summary>
		/// Заголовок текущего действия
		/// </summary>
		public virtual string CurrentActionCaption
		{
			get
			{
				switch ( this._CurrentAction )
				{
					// Показ
					case StoredProcedureAction.SHOW :
						return Entity.SHOW_ACTION_CAPTION;

					// Установка
					case StoredProcedureAction.SET :
						return Entity.SET_ACTION_CAPTION;

					// Добавление
					case StoredProcedureAction.INSERT :
						return Entity.INSERT_ACTION_CAPTION;

					// Обновление
					case StoredProcedureAction.UPDATE :
						return Entity.UPDATE_ACTION_CAPTION;

					// Удаление
					case StoredProcedureAction.DELETE :
						return Entity.DELETE_ACTION_CAPTION;

					// Прочие непредусмотренные процедуры
					default :
						return string.Empty;
				} // switch
			} // get
		} // CurrentActionCaption

		/// <summary>
		/// Название хранимой процедуры текущего действия
		/// </summary>
		public virtual string CurrentActionStoredProcedureName
		{
			get
			{
				switch ( this._CurrentAction )
				{
					// Показ
					case StoredProcedureAction.SHOW :
						return Entity.SHOW_PROCEDURE_NAME;

					// Установка
					case StoredProcedureAction.SET :
						return Entity.SET_PROCEDURE_NAME;

					// Добавление
					case StoredProcedureAction.INSERT :
						return Entity.INSERT_PROCEDURE_NAME;

					// Обновление
					case StoredProcedureAction.UPDATE :
						return Entity.UPDATE_PROCEDURE_NAME;

					// Удаление
					case StoredProcedureAction.DELETE :
						return Entity.DELETE_PROCEDURE_NAME;

					// Прочие непредусмотренные процедуры
					default :
						return string.Empty;
				} // switch
			} // get
		} // CurrentActionStoredProcedureName
		#endregion Свойства
	} // Entity
} // CentralBusTerminalClient
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Маршрутный расход планировки автобуса
	/// </summary>
	public class BusPlanningPathExpense : Entity
	{
		#region Поля
		/// <summary>
		/// Заголовок сущности
		/// </summary>
		new public const string ENTITY_CAPTION      =
			"Маршрутный расход планировки автобуса";
		/// <summary>
		/// Название хранимой процедуры показа
		/// </summary>
		new public const string SHOW_PROCEDURE_NAME =
			"SP_ShowBusesPlanningsPathsExpenses";

		/// <summary>
		/// Название таблицы маршрутных расходов планировок автобусов
		/// </summary>
		protected readonly string _BusesPlanningsPathsExpensesDataSetTableName;
		/// <summary>
		/// Адаптер Sql-данных маршрутных расходов планировок автобусов
		/// </summary>
		protected SqlDataAdapter  _BusesPlanningsPathsExpensesSqlDataAdapter;
		#endregion Поля

		#region Методы
		#region Методы инициализации и очистки
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
				// Показ
				case StoredProcedureAction.SHOW :
					// Адаптер Sql-данных маршрутных расходов планировок автобусов
					this._BusesPlanningsPathsExpensesSqlDataAdapter.Fill( parDataSet,
						this._BusesPlanningsPathsExpensesDataSetTableName );
					break;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // FillSqlDataAdapters
		#endregion Методы инициализации и очистки

		#region Методы добавления и вывода параметров хранимых процедур
		/// <summary>
		/// Добавление параметров хранимой процедуры
		/// </summary>
		/// <param name="parStoredProcedure">Хранимая процедура</param>
		protected override void AddStoredProcedureParameters
			( ref SqlCommand parStoredProcedure )
		{
		} // AddStoredProcedureParameters

		/// <summary>
		/// Вывод параметров хранимой процедуры
		/// </summary>
		/// <param name="parStoredProcedure">Хранимая процедура</param>
		protected override void OutputStoredProcedureParameters
			( SqlCommand parStoredProcedure )
		{
		} // OutputStoredProcedureParameters
		#endregion Методы добавления и вывода параметров хранимых процедур
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание маршрутного расхода планировки автобуса по умолчанию
		/// </summary>
		public BusPlanningPathExpense( )
		{
			// Установка неизвестного текущего действия
			this._CurrentAction = StoredProcedureAction.UNKNOWN;
			// Пустые названия таблиц сущностей
			this._BusesPlanningsPathsExpensesDataSetTableName = string.Empty;
		} // BusPlanningPathExpense

		/// <summary>
		/// Создание маршрутного расхода планировки автобуса
		/// c заданным действием хранимой процедуры и названиями таблиц сущностей
		/// </summary>
		/// <param name="parAction">Действие</param>
		/// <param name="parDataSet">Множество данных</param>
		/// <param name="parBusesPlanningsPathsExpensesDataSetTableName">
		/// Название таблицы маршрутных расходов планировок автобусов</param>
		public BusPlanningPathExpense
		(
			StoredProcedureAction         parAction,
			ref CentralBusTerminalDataSet parDataSet,
			string parBusesPlanningsPathsExpensesDataSetTableName
		)
		{
			// Установка текущего действия
			this._CurrentAction = parAction;
			// Инициализация названий таблиц сущностей
			this._BusesPlanningsPathsExpensesDataSetTableName =
				parBusesPlanningsPathsExpensesDataSetTableName;

			// Инициализация адаптеров Sql-данных в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Показ
				case StoredProcedureAction.SHOW :
					// Адаптер Sql-данных маршрутных расходов планировок автобусов
					this._BusesPlanningsPathsExpensesSqlDataAdapter = new SqlDataAdapter
						( new SqlCommand( BusPlanningPathExpense.SHOW_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					break;

				// Прочие непредусмотренные процедуры
				default :
					break;
			} // switch

			// Инициализация
			this.Initialize( ref parDataSet );
		} // BusPlanningPathExpense
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
						return BusPlanningPathExpense.SHOW_PROCEDURE_NAME;

					// Установка
					case StoredProcedureAction.SET :
						return BusPlanningPathExpense.SET_PROCEDURE_NAME;

					// Добавление
					case StoredProcedureAction.INSERT :
						return BusPlanningPathExpense.INSERT_PROCEDURE_NAME;

					// Обновление
					case StoredProcedureAction.UPDATE :
						return BusPlanningPathExpense.UPDATE_PROCEDURE_NAME;

					// Удаление
					case StoredProcedureAction.DELETE :
						return BusPlanningPathExpense.DELETE_PROCEDURE_NAME;

					// Прочие непредусмотренные процедуры
					default :
						return string.Empty;
				} // switch
			} // get
		} // CurrentActionStoredProcedureName

		/// <summary>
		/// Название таблицы маршрутных расходов планировок автобусов
		/// </summary>
		public virtual string BusesPlanningsPathsExpensesDataSetTableName
		{
			get
			{
				return this._BusesPlanningsPathsExpensesDataSetTableName;
			} // get
		} // BusesPlanningsPathsExpensesDataSetTableName
		#endregion Свойства
	} // BusPlanningPathExpense
} // CentralBusTerminalClient
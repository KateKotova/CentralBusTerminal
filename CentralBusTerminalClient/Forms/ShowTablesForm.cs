using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма показа таблиц
	/// </summary>
	public partial class ShowTablesForm : Form
	{
		#region Поля
		/// <summary>
		/// Сущность автобуса
		/// </summary>
		protected Bus                    _Bus;
		/// <summary>
		/// Сущность маршрутного расхода планировки автобуса
		/// </summary>
		protected BusPlanningPathExpense _BusPlanningPathExpense;
		/// <summary>
		/// Сущность выполнения рейса
		/// </summary>
		protected RunExecution           _RunExecution;
		#endregion Поля

		#region Методы
		#region Стандартные методы
		/// <summary>
		/// Загрузка формы показа таблиц
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnShowTablesFormLoad
		(
			object    sender,
			EventArgs e
		)
		{
			// Явное открытие соединения предотвратит лишние операции по неявному
			// открытиею и закрытию его во время вызова метода SqlDataAdapter.Fill
			DataContainer.Instance( ).CurrentSqlConnection.Open( );

			// Создание автобуса на показ
			this._Bus          = new Bus         ( StoredProcedureAction.SHOW,
				ref this.centralBusTerminalDataSet,
				this.centralBusTerminalDataSet.Buses.TableName,
				string.Empty, string.Empty, string.Empty );

			// Создание маршрутного расхода планировки автобуса на показ
			this._BusPlanningPathExpense =
				new BusPlanningPathExpense         ( StoredProcedureAction.SHOW,
				ref this.centralBusTerminalDataSet,
				this.centralBusTerminalDataSet.BusesPlanningsPathsExpenses.
				TableName );

			// Создание выполнения рейса на показ
			this._RunExecution = new RunExecution( StoredProcedureAction.SHOW,
				ref this.centralBusTerminalDataSet,
				this.centralBusTerminalDataSet.RunsExecutions.TableName, string.Empty,
				string.Empty, string.Empty, string.Empty, string.Empty );
		} // OnShowTablesFormLoad

		/// <summary>
		/// Завершение работы с формой показа таблиц
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnShowTablesFormFormClosing
		(
			object               sender,
			FormClosingEventArgs e
		)
		{
			// Явное закрытие соединения необходимо, так как оно было явно открыто,
			// поэтому никогда не закрывалоть при вызове m_SqlDataAdapter.Fill
			DataContainer.Instance( ).CurrentSqlConnection.Close( );
		} // OnShowTablesFormFormClosing
		#endregion Стандартные методы

		#region Методы реакций на выполнение редактирования сущностей
		/// <summary>
		/// Обновление данных адаптеров Sql-данных cущностей
		/// </summary>
		public virtual void RefreshSqlDataAdapters( )
		{
			// Очиста необходима, так как метод SqlDataAdapter.Fill
			// не удаляет строки, удалёные из базы данных без вмешательства
			// данного приложения, хотя при вызове "поверх" существующих строк,
			// обновляет их содержимое в соответствии с первичным ключом
			this.centralBusTerminalDataSet.Clear( );
			// Заполнение адаптеров Sql-данных cущностей
			this._Bus.FillEntitySqlDataAdapter
				( ref this.centralBusTerminalDataSet );
			this._BusPlanningPathExpense.FillEntitySqlDataAdapter
				( ref this.centralBusTerminalDataSet );
			this._RunExecution.FillEntitySqlDataAdapter
				( ref this.centralBusTerminalDataSet );
		} // RefreshSqlDataAdapters

		/// <summary>
		/// Установка текущей строки таблицы по значениям ячейкеек
		/// </summary>
		/// <param name="parDataGridView">Таблица</param>
		/// <param name="parRowCellsValues">Значения ячеек строки</param>
		public static void SetDataGridViewCurrentRow
		(
			ref DataGridView                 parDataGridView,
			List< DataGridViewRowCellValue > parRowCellsValues
		)
		{
			// Индекс строки
			int rowIndex = 0;
			// Поиск значений ячеек в строке для выделения
			while ( rowIndex < parDataGridView.Rows.Count )
			{
				// Признак того, что рассматриваемая строка является текущей
				bool rowIsCurrent = true;

				// Если хотя бы одна из соответствующих ячеек в рассматриваемой строке
				// не имеет соответствующе значение,
				// то рассматриваемая строка не может быть текущей
				for ( int rowCellValueIndex = 0; rowCellValueIndex <
					parRowCellsValues.Count; rowCellValueIndex++ )
					if
					(
						Convert.ToString
						(
							parDataGridView
							[
								parRowCellsValues[ rowCellValueIndex ].ColumnIndex,
								rowIndex
							].Value
						) !=
						parRowCellsValues[ rowCellValueIndex ].CellValue
					)
					{
						rowIsCurrent = false;
						break;
					} // if

				// Если все ячейки рассматриваемой строки с соответствующими
				// индексами столбцов имеют соответствующие значения,
				// то рассматриваемая строка становится текущей
				if ( rowIsCurrent )
				{
					parDataGridView.CurrentCell = parDataGridView[ 0, rowIndex ];
					break;
				} // if

				// Перемещение к следующей строке
				rowIndex++;
			} // while
		} // SetDataGridViewCurrentRow

		/// <summary>
		/// Реакция на выполнение редактирования автобуса
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnBusEditingIsExecuted
		(
			object           sender,
			EditBusEventArgs e
		)
		{
			// Обновление данных адаптеров Sql-данных cущностей
			this.RefreshSqlDataAdapters( );
			// Если автобус был добавлен или обновлён,
			// текущая строка таблицы автобусов устанавливается
			// в позицию отредактированного автобуса
			if ( ( e.Action == StoredProcedureAction.INSERT ) ||
					 ( e.Action == StoredProcedureAction.UPDATE ) )
			{
				// Значения ячеек текущей строки
				List< DataGridViewRowCellValue > rowCellsValues =
					new List< DataGridViewRowCellValue >( 1 );
				// Автомобильный номер
				rowCellsValues.Add( new DataGridViewRowCellValue( 0, e.CarCode ) );
				// Установка текущей строки таблицы по значениям ячейкеек
				ShowTablesForm.SetDataGridViewCurrentRow
					( ref this.busesDataGridView, rowCellsValues );
			} // if
		} // OnBusEditingIsExecuted

		/// <summary>
		/// Реакция на выполнение редактирования выполнения рейса
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnRunExecutionEditingIsExecuted
		(
			object                    sender,
			EditRunExecutionEventArgs e
		)
		{
			// Обновление данных адаптеров Sql-данных cущностей
			this.RefreshSqlDataAdapters( );
			// Если выполнение рейса было добавлено или обновлено,
			// текущая строка таблицы выполнений рейсов устанавливается
			// в позицию отредактированного выполнения рейса
			if ( ( e.Action == StoredProcedureAction.INSERT ) ||
					 ( e.Action == StoredProcedureAction.UPDATE ) )
			{
				// Значения ячеек текущей строки
				List< DataGridViewRowCellValue > rowCellsValues =
					new List< DataGridViewRowCellValue >( 7 );

				// Дата
				rowCellsValues.Add( new DataGridViewRowCellValue( 0, e.Date ) );
				// Маршрут
				rowCellsValues.Add( new DataGridViewRowCellValue( 1, e.Path ) );
				// Дань недели
				rowCellsValues.Add( new DataGridViewRowCellValue( 2, e.Weekday ) );
				// Время
				rowCellsValues.Add( new DataGridViewRowCellValue( 3, e.Time ) );
				// Автомобильный номер автобуса
				rowCellsValues.Add( new DataGridViewRowCellValue( 4, e.BusCarCode ) );
				// Категория автобуса
				rowCellsValues.Add( new DataGridViewRowCellValue
					( 5, e.BusCategory ) );
				// Паспортные данные водителя автобуса
				rowCellsValues.Add( new DataGridViewRowCellValue
					( 13, e.DriverPassportData ) );

				// Установка текущей строки таблицы по значениям ячейкеек
				ShowTablesForm.SetDataGridViewCurrentRow
					( ref this.runsExecutionsDataGridView, rowCellsValues );
			} // if
		} // OnRunExecutionEditingIsExecuted
		#endregion Методы реакций на выполнение редактирования сущностей

		#region Методы обращения к сущностям без инициализации параметров
		/// <summary>
		/// Показ формы диалога редактрирования сущности в заданном режиме
		/// </summary>
		/// <param name="parEditingAction">Действие редактирования</param>
		protected virtual void ShowEditEntityFormDialog
			( StoredProcedureAction parEditingAction )
		{
			// Выбор редактируемой сущности активной закладки
			switch ( this.tabControl.SelectedIndex )
			{
				// Закладка водителей автобусов
				case 0 :
					return;

				// Закладка планировок автобусов
				case 1 :
					return;

				// Закладка автобусов
				case 2 :
					// Форма редактирования автобуса в заданном режиме
					EditBusForm editBusForm = new EditBusForm( parEditingAction );
					// Подписка на событие выполнения редактирования автобуса
					editBusForm.BusEditingIsExecuted += this.OnBusEditingIsExecuted;
					// Показ диалога редактирования автобуса
					editBusForm.ShowDialog( );
					return;

				// Закладка направлений
				case 3 :
					return;

				// Закладка стоимостей 1 км направлений
				case 4 :
					return;

				// Закладка маршрутов
				case 5 :
					return;

				// Закладка маршрутных расходов планировок автобусов
				case 6 :
					// Здесь не показывается никакая форма редактирования сущности,
					// так как данная сущность только для просмотра
					return;

				// Закладка цен билетов на автобусы
				case 7 :
					return;

				// Закладка остановок
				case 8 :
					return;

				// Закладка расписаний рейсов
				case 9 :
					return;

				// Закладка выполнений рейсов
				case 10 :
					// Форма редактирования выполнения рейса в заданном режиме
					EditRunExecutionForm editRunExecutionForm =
						new EditRunExecutionForm( parEditingAction );
					// Подписка на событие выполнения редактирования выполнения рейса
					editRunExecutionForm.RunExecutionEditingIsExecuted +=
						this.OnRunExecutionEditingIsExecuted;
					// Показ диалога редактирования выполнения рейса
					editRunExecutionForm.ShowDialog( );
					return;

				// Закладка продажи билетов
				case 11 :
					return;

				// Закладка карт
				case 12 :
					return;

				// Закладка карт маргрутов
				case 13 :
					return;

				// Закладка координат остновок
				case 14 :
					return;

				// Прочие непредусмотренные закладки
				default :
					return;
			} // switch
		} // ShowEditEssenceFormDialog

		/// <summary>
		/// Добавление сущности
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnInsertToolStripButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
			// Показ формы диалога добавления сущности
			this.ShowEditEntityFormDialog( StoredProcedureAction.INSERT );
		} // OnInsertToolStripButtonClick

		/// <summary>
		/// Обновление сущности
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnUpdateToolStripButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
			// Показ формы диалога добавления сущности
			this.ShowEditEntityFormDialog( StoredProcedureAction.UPDATE );
		} // OnUpdateToolStripButtonClick

		/// <summary>
		/// Удаление сущности
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnDeleteToolStripButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
			// Показ формы диалога добавления сущности
			this.ShowEditEntityFormDialog( StoredProcedureAction.DELETE );
		} // OnDeleteToolStripButtonClick
		#endregion Методы обращения к сущностям без инициализации параметров

		#region Методы редактирования сущностей с инициализацией параметров
		/// <summary>
		/// Добавление сущности с инициализацией параметров
		/// из текущей строки текущей таблицы
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnInsertToolStripMenuItemClick
		(
			object    sender,
			EventArgs e
		)
		{
			// Выбор редактируемой сущности активной закладки
			switch ( this.tabControl.SelectedIndex )
			{
				// Закладка водителей автобусов
				case 0 :
					return;

				// Закладка планировок автобусов
				case 1 :
					return;

				// Закладка автобусов
				case 2 :
					// Форма редактирования автобуса в режиме добавления
					EditBusForm editBusForm = new EditBusForm
					(
						this.busesDataGridView
						[
							this.busCarCodeDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( ),

						this.busesDataGridView
						[
							this.busCategoryDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( ),

						this.busesDataGridView
						[
							this.busSeatsQuantityDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( ),

						this.busesDataGridView
						[
							this.busUsageStartYearDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( ),

						this.busesDataGridView
						[
							this.busSanityStateDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( ),

						this.busesDataGridView
						[
							this.busActivityStateDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( )
					);

					// Подписка на событие выполнения редактирования автобуса
					editBusForm.BusEditingIsExecuted += this.OnBusEditingIsExecuted;
					// Показ диалога редактирования автобуса
					editBusForm.ShowDialog( );
					return;

				// Закладка направлений
				case 3 :
					return;

				// Закладка стоимостей 1 км направлений
				case 4 :
					return;

				// Закладка маршрутов
				case 5 :
					return;

				// Закладка маршрутных расходов планировок автобусов
				case 6 :
					// Здесь не показывается никакая форма редактирования сущности,
					// так как данная сущность только для просмотра
					return;

				// Закладка цен билетов на автобусы
				case 7 :
					return;

				// Закладка остановок
				case 8 :
					return;

				// Закладка расписаний рейсов
				case 9 :
					return;

				// Закладка выполнений рейсов
				case 10 :
					// Форма редактирования выполнения рейса в режиме добавления
					EditRunExecutionForm editRunExecutionForm =
						new EditRunExecutionForm
						(
							StoredProcedureAction.INSERT,

							this.runsExecutionsDataGridView
							[
								this.runExecutionDateDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionPathDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionBusCategoryDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionWeekdayDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionTimeDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionBusCarCodeDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionDriverPassportDataDataGridViewTextBoxColumn.
									Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( )
						);

					// Подписка на событие выполнения редактирования выполнения рейса
					editRunExecutionForm.RunExecutionEditingIsExecuted +=
						this.OnRunExecutionEditingIsExecuted;
					// Показ диалога редактирования выполнения рейса
					editRunExecutionForm.ShowDialog( );
					return;

				// Закладка продажи билетов
				case 11 :
					return;

				// Закладка карт
				case 12 :
					return;

				// Закладка карт маргрутов
				case 13 :
					return;

				// Закладка координат остновок
				case 14 :
					return;

				// Прочие непредусмотренные закладки
				default :
					return;
			} // switch
		} // OnInsertToolStripMenuItemClick

		/// <summary>
		/// Обновление сущности с инициализацией параметров
		/// из текущей строки текущей таблицы
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnUpdateToolStripMenuItemClick
		(
			object    sender,
			EventArgs e
		)
		{
			// Выбор редактируемой сущности активной закладки
			switch ( this.tabControl.SelectedIndex )
			{
				// Закладка водителей автобусов
				case 0 :
					return;

				// Закладка планировок автобусов
				case 1 :
					return;

				// Закладка автобусов
				case 2 :
					// Форма редактирования автобуса в режиме обновления
					EditBusForm editBusForm = new EditBusForm
					(
						this.busesDataGridView
						[
							this.busCarCodeDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( ),

						this.busesDataGridView
						[
							this.busCarCodeDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( ),

						this.busesDataGridView
						[
							this.busCategoryDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( ),

						this.busesDataGridView
						[
							this.busSeatsQuantityDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( ),

						this.busesDataGridView
						[
							this.busUsageStartYearDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( ),

						this.busesDataGridView
						[
							this.busSanityStateDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( ),

						this.busesDataGridView
						[
							this.busActivityStateDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( )
					);

					// Подписка на событие выполнения редактирования автобуса
					editBusForm.BusEditingIsExecuted += this.OnBusEditingIsExecuted;
					// Показ диалога редактирования автобуса
					editBusForm.ShowDialog( );
					return;

				// Закладка направлений
				case 3 :
					return;

				// Закладка стоимостей 1 км направлений
				case 4 :
					return;

				// Закладка маршрутов
				case 5 :
					return;

				// Закладка маршрутных расходов планировок автобусов
				case 6 :
					// Здесь не показывается никакая форма редактирования сущности,
					// так как данная сущность только для просмотра
					return;

				// Закладка цен билетов на автобусы
				case 7 :
					return;

				// Закладка остановок
				case 8 :
					return;

				// Закладка расписаний рейсов
				case 9 :
					return;

				// Закладка выполнений рейсов
				case 10 :
					// Форма редактирования выполнения рейса в режиме обновления
					EditRunExecutionForm editRunExecutionForm =
						new EditRunExecutionForm
						(
							StoredProcedureAction.UPDATE,

							this.runsExecutionsDataGridView
							[
								this.runExecutionDateDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionPathDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionBusCategoryDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionWeekdayDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionTimeDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionBusCarCodeDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionDriverPassportDataDataGridViewTextBoxColumn.
									Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( )
						);

					// Подписка на событие выполнения редактирования выполнения рейса
					editRunExecutionForm.RunExecutionEditingIsExecuted +=
						this.OnRunExecutionEditingIsExecuted;
					// Показ диалога редактирования выполнения рейса
					editRunExecutionForm.ShowDialog( );
					return;

				// Закладка продажи билетов
				case 11 :
					return;

				// Закладка карт
				case 12 :
					return;

				// Закладка карт маргрутов
				case 13 :
					return;

				// Закладка координат остновок
				case 14 :
					return;

				// Прочие непредусмотренные закладки
				default :
					return;
			} // switch
		} // OnUpdateToolStripMenuItemClick

		/// <summary>
		/// Удаление сущности с инициализацией параметров
		/// из текущей строки текущей таблицы
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnDeleteToolStripMenuItemClick
		(
			object    sender,
			EventArgs e
		)
		{
			// Выбор редактируемой сущности активной закладки
			switch ( this.tabControl.SelectedIndex )
			{
				// Закладка водителей автобусов
				case 0 :
					return;

				// Закладка планировок автобусов
				case 1 :
					return;

				// Закладка автобусов
				case 2 :
					// Форма редактирования автобуса в режиме удаления
					EditBusForm editBusForm = new EditBusForm
					(
						this.busesDataGridView
						[
							this.busCarCodeDataGridViewTextBoxColumn.Index,
							this.busesDataGridView.CurrentRow.Index
						].Value.ToString( )
					);

					// Подписка на событие выполнения редактирования автобуса
					editBusForm.BusEditingIsExecuted += this.OnBusEditingIsExecuted;
					// Показ диалога редактирования автобуса
					editBusForm.ShowDialog( );
					return;

				// Закладка направлений
				case 3 :
					return;

				// Закладка стоимостей 1 км направлений
				case 4 :
					return;

				// Закладка маршрутов
				case 5 :
					return;

				// Закладка маршрутных расходов планировок автобусов
				case 6 :
					// Здесь не показывается никакая форма редактирования сущности,
					// так как данная сущность только для просмотра
					return;

				// Закладка цен билетов на автобусы
				case 7 :
					return;

				// Закладка остановок
				case 8 :
					return;

				// Закладка расписаний рейсов
				case 9 :
					return;

				// Закладка выполнений рейсов
				case 10 :
					// Форма редактирования выполнения рейса в режиме удаления
					EditRunExecutionForm editRunExecutionForm =
						new EditRunExecutionForm
						(
							StoredProcedureAction.DELETE,

							this.runsExecutionsDataGridView
							[
								this.runExecutionDateDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionPathDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionBusCategoryDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionWeekdayDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionTimeDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionBusCarCodeDataGridViewTextBoxColumn.Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( ),

							this.runsExecutionsDataGridView
							[
								this.runExecutionDriverPassportDataDataGridViewTextBoxColumn.
									Index,
								this.runsExecutionsDataGridView.CurrentRow.Index
							].Value.ToString( )
						);

					// Подписка на событие выполнения редактирования выполнения рейса
					editRunExecutionForm.RunExecutionEditingIsExecuted +=
						this.OnRunExecutionEditingIsExecuted;
					// Показ диалога редактирования выполнения рейса
					editRunExecutionForm.ShowDialog( );
					return;

				// Закладка продажи билетов
				case 11 :
					return;

				// Закладка карт
				case 12 :
					return;

				// Закладка карт маргрутов
				case 13 :
					return;

				// Закладка координат остновок
				case 14 :
					return;

				// Прочие непредусмотренные закладки
				default :
					return;
			} // switch
		} // OnDeleteToolStripMenuItemClick
		#endregion Методы редактирования сущностей с инициализацией параметров
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание формы показа таблиц
		/// </summary>
		public ShowTablesForm( )
		{
			InitializeComponent( );

			// Изменение шрифта шапок таблиц

			this.driversDataGridView.ColumnHeadersDefaultCellStyle.Font.Dispose( );
			this.busesDataGridView.ColumnHeadersDefaultCellStyle.Font.Dispose( );
			this.busesPlanningsDataGridView.ColumnHeadersDefaultCellStyle.
				Font.Dispose( );
			this.directionsDataGridView.ColumnHeadersDefaultCellStyle.
				Font.Dispose( );
			this.directionsOneKmCostsDataGridView.ColumnHeadersDefaultCellStyle.
				Font.Dispose( );
			this.pathsDataGridView.ColumnHeadersDefaultCellStyle.Font.Dispose( );
			this.busesPlanningsPathsExpensesDataGridView.
				ColumnHeadersDefaultCellStyle.Font.Dispose( );
			this.busesTicketsCostsDataGridView.ColumnHeadersDefaultCellStyle.
				Font.Dispose( );
			this.stopsDataGridView.ColumnHeadersDefaultCellStyle.Font.Dispose( );
			this.runsTimetableDataGridView.ColumnHeadersDefaultCellStyle.
				Font.Dispose( );
			this.runsExecutionsDataGridView.ColumnHeadersDefaultCellStyle.
				Font.Dispose( );
			this.ticketsSaleDataGridView.ColumnHeadersDefaultCellStyle.
				Font.Dispose( );
			this.mapsDataGridView.ColumnHeadersDefaultCellStyle.Font.Dispose( );
			this.pathsMapsDataGridView.ColumnHeadersDefaultCellStyle.
				Font.Dispose( );
			this.stopsCoordinatesDataGridView.ColumnHeadersDefaultCellStyle.
				Font.Dispose( );

			this.driversDataGridView.ColumnHeadersDefaultCellStyle.Font           =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.busesDataGridView.ColumnHeadersDefaultCellStyle.Font             =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.busesPlanningsDataGridView.ColumnHeadersDefaultCellStyle.Font    =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.directionsDataGridView.ColumnHeadersDefaultCellStyle.Font        =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.directionsOneKmCostsDataGridView.
				ColumnHeadersDefaultCellStyle.Font                                  =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.pathsDataGridView.ColumnHeadersDefaultCellStyle.Font             =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.busesPlanningsPathsExpensesDataGridView.
				ColumnHeadersDefaultCellStyle.Font                                  =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.busesTicketsCostsDataGridView.ColumnHeadersDefaultCellStyle.Font =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.stopsDataGridView.ColumnHeadersDefaultCellStyle.Font             =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.runsTimetableDataGridView.ColumnHeadersDefaultCellStyle.Font     =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.runsExecutionsDataGridView.ColumnHeadersDefaultCellStyle.Font    =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.ticketsSaleDataGridView.ColumnHeadersDefaultCellStyle.Font       =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.mapsDataGridView.ColumnHeadersDefaultCellStyle.Font              =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.pathsMapsDataGridView.ColumnHeadersDefaultCellStyle.Font         =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
			this.stopsCoordinatesDataGridView.ColumnHeadersDefaultCellStyle.Font  =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
		} // ShowTablesForm
		#endregion Конструкторы
	} // ShowTablesForm
} // CentralBusTerminalClient
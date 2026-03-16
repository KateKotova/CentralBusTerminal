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
	/// Форма поиска остановок
	/// </summary>
	public partial class StopsSearchForm : Form, IEntityForm
	{
		#region Поля
		/// <summary>
		/// Сущность найденной остновки
		/// </summary>
		protected FoundStop _FoundStop;
		#endregion Поля

		#region Методы
		#region Стандартные методы
		/// <summary>
		/// Загрузка формы поиска остановок
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnStopsSearchFormLoad
		(
			object    sender,
			EventArgs e
		)
		{
			// Явное открытие соединения предотвратит лишние операции по неявному
			// открытиею и закрытию его во время вызова метода SqlDataAdapter.Fill
			DataContainer.Instance( ).CurrentSqlConnection.Open( );

			// Создание найденной остановки на показ
			this._FoundStop = new FoundStop( StoredProcedureAction.SET,
				ref this.centralBusTerminalDataSet,
				this.centralBusTerminalDataSet.FoundStops.TableName,
				this.centralBusTerminalDataSet.BusesCategories.TableName,
				this.centralBusTerminalDataSet.Weekdays.TableName );
		} // OnStopsSearchFormLoad

		/// <summary>
		/// Завершение работы с формой поиска остановок
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnStopsSearchFormFormClosing
		(
			object               sender,
			FormClosingEventArgs e
		)
		{
			// Явное закрытие соединения необходимо, так как оно было явно открыто,
			// поэтому никогда не закрывалоть при вызове m_SqlDataAdapter.Fill
			DataContainer.Instance( ).CurrentSqlConnection.Close( );
		} // OnStopsSearchFormFormClosing
		#endregion Стандартные методы

		#region Методы обработки данных
		/// <summary>
		/// Очистка
		/// </summary>
		public virtual void Clear( )
		{
			// Очистка предупреждающих пометок ошибочных полей
			this.errorProvider.Clear( );

			// Очистка полей параметров
			this.nameSubstringTextBox.Clear( );
			this.busCategoryComboBox.Text = string.Empty;
			this.weekdayComboBox.Text     = string.Empty;
		} // Clear

		/// <summary>
		/// Загрузка параметров хранимой процедуры
		/// </summary>
		/// <returns>Отчёт операции с результатами: SUCCESSFUL,
		/// INVALID_STOP_NAME_SUBSTRING, INVALID_BUS_CATEGORY,
		/// INVALID_WEEKDAY</returns>
		public virtual OperationReport LoadStoredProcedureParameters( )
		{
			// Загрузка параметров хранимой процедуры показа
			return this._FoundStop.LoadSetStoredProcedureParameters
			(
				this.nameSubstringTextBox.Text,
				this.busCategoryComboBox.Text,
				this.weekdayComboBox.Text
			);
		} // LoadInsertStoredProcedureParameters

		/// <summary>
		/// Вывод параметров хранимой процедуры
		/// </summary>
		public virtual void OutputStoredProcedureParameters( )
		{
			// Вывод значений параметров в поля
			this.nameSubstringTextBox.Text = this._FoundStop.NameSubstring;
			this.busCategoryComboBox.Text  = this._FoundStop.BusCategory;
			this.weekdayComboBox.Text      = this._FoundStop.Weekday;
		} // OutputStoredProcedureParameters

		/// <summary>
		/// Выделение неверного параметра
		/// </summary>
		/// <param name="parOperationReport">Отчёт операции</param>
		public virtual void MarkInvalidParameter
			( OperationReport parOperationReport )
		{
			// Очиста сигнализаторов об ошибке
			this.errorProvider.Clear( );

			// Выделение поля неверного параметра
			// Пометка поля параметра, на который указывает результат операции
			switch ( parOperationReport.Result )
			{
				// Неверная подстрока названия
				case OperationResult.INVALID_STOP_NAME_SUBSTRING :
					this.errorProvider.SetError( this.nameSubstringTextBox,
						parOperationReport.Message );
					return;

				// Неверная катогория автобуса
				case OperationResult.INVALID_BUS_CATEGORY :
					this.errorProvider.SetError( this.busCategoryComboBox,
						parOperationReport.Message );
					return;

				// Неверный день недели
				case OperationResult.INVALID_WEEKDAY :
					this.errorProvider.SetError( this.weekdayComboBox,
						parOperationReport.Message );
					return;

				// Прочие ошибки
				default:
					this.errorProvider.SetError( this.searchButton,
						parOperationReport.Message );
					return;
			} // switch
		} // MarkInvalidParameter
		#endregion Методы обработки данных

		#region Конкретные методы редактирования
		/// <summary>
		/// Выполнение хранимой процедуры
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		public virtual void OnSearchButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
			this.Cursor = Cursors.WaitCursor;
			// Очистка предупреждающих пометок полей
			this.errorProvider.Clear( );
			// Отчёт об операции загрузки параметров хранимой процедуры
			OperationReport operationReport = this.LoadStoredProcedureParameters( );

			// Если предварительная операция загрузки параметров не удачна
			if ( operationReport.Result != OperationResult.SUCCESSFUL )
			{
				this.Cursor = Cursors.Default;
				// Выделение неверного параметра
				this.MarkInvalidParameter( operationReport );
				return;
			} // if

			// Выполнение хранимой процедуры с использованием
			// краткого сообщения об ошибке, но без системного сообщения об ошибке
			this._FoundStop.ExecuteStoredProcedure
				( ref this.centralBusTerminalDataSet, true, false );
			// Вывод параметров хранимой процедуры
			this.OutputStoredProcedureParameters( );
			this.Cursor = Cursors.Default;

			// Если операция не выполнена, то выдаётся сообщение об ошибке
			if
			(
				DataContainer.Instance( ).ErrorCodeParameter.Value != DBNull.Value &&
				( int ) DataContainer.Instance( ).ErrorCodeParameter.Value != 0
			)
				new MessageForm
				(
					( string ) DataContainer.Instance( ).
						ShortErrorMessageParameter.Value,
					string.Empty
				).ShowDialog( );
			// Иначе инициализируется событие выполнения редактирования
			else
				// Обновление данных адаптеров Sql-данных cущностей
				this.RefreshSqlDataAdapters( );
		}// OnSearchButtonClick
		#endregion Конкретные методы редактирования

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
			// Заполнение адаптера Sql-данных сущности остановок
			this._FoundStop.FillEntitySqlDataAdapter
				( ref this.centralBusTerminalDataSet );
		} // RefreshSqlDataAdapters
		#endregion Методы реакций на выполнение редактирования сущностей
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание формы поиска остановок
		/// </summary>
		public StopsSearchForm( )
		{
			InitializeComponent( );

			// Изменение шрифта шапки таблицы
			this.foundStopsDataGridView.ColumnHeadersDefaultCellStyle.
				Font.Dispose( );
			this.foundStopsDataGridView.ColumnHeadersDefaultCellStyle.Font =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
		} // StopsSearchForm
		#endregion Конструкторы
	} // StopsSearchForm
} // CentralBusTerminalClient
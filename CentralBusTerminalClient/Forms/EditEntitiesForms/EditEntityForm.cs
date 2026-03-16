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
	/// Форма редактирования сущности
	/// </summary>
	public partial class EditEntityForm : Form, IEditEntityForm
	{
		#region Поля
		/// <summary>
		/// Действие редактирования
		/// </summary>
		protected StoredProcedureAction _EditingAction =
			StoredProcedureAction.UNKNOWN;

		/// <summary>
		/// Индекс изображения списка для операции добавления
		/// </summary>
		protected const int INSERT_ACTION_IMAGE_INDEX = 1;
		/// <summary>
		/// Индекс изображения списка для операции обновления
		/// </summary>
		protected const int UPDATE_ACTION_IMAGE_INDEX = 2;
		/// <summary>
		/// Индекс изображения списка для операции удаления
		/// </summary>
		protected const int DELETE_ACTION_IMAGE_INDEX = 3;
		#endregion Поля

		#region Методы
		/// <summary>
		/// Инициализация формы редактирования сущности
		/// </summary>
		/// <param name="parEditingAction">Действие редактирования</param>
		public virtual void Initialize( StoredProcedureAction parEditingAction )
		{
			// Установка действия редактирования
			this._EditingAction = parEditingAction;

			// Установка изображения на кнопке запуска операции редактирования
			switch ( this._EditingAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					this.executeButton.ImageIndex =
						EditEntityForm.INSERT_ACTION_IMAGE_INDEX;
					break;

				// Обновление
				case StoredProcedureAction.UPDATE :
					this.executeButton.ImageIndex =
						EditEntityForm.UPDATE_ACTION_IMAGE_INDEX;
					break;

				// Удаление
				case StoredProcedureAction.DELETE :
					this.executeButton.ImageIndex =
						EditEntityForm.DELETE_ACTION_IMAGE_INDEX;
					break;

				// Прочие непредусмотренные процедуры
				default :
					break;
			} // switch
		} // Initialize

		#region Стандартные методы
		/// <summary>
		/// Загрузка формы редактирования сущности
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnEditEntityFormLoad
		(
			object    sender,
			EventArgs e
		)
		{
			// Явное открытие соединения предотвратит лишние операции по неявному
			// открытию и закрытию его во время вызова метода SqlDataAdapter.Fill
//			if ( DataContainer.Instance( ).CurrentSqlConnection.State !=
//					ConnectionState.Open )
//				DataContainer.Instance( ).CurrentSqlConnection.Open( );
		} // OnEditEntityFormLoad

		/// <summary>
		/// Завершение работы с формой редактирования сущности
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnEditEntityFormFormClosing
		(
			object               sender,
			FormClosingEventArgs e
		)
		{
			// Явное закрытие соединения необходимо, так как оно было явно открыто,
			// поэтому никогда не закрывалоть при вызове m_SqlDataAdapter.Fill
			// DataContainer.Instance( ).CurrentSqlConnection.Close( );
		} // OnEditEntityFormFormClosing
		#endregion Стандартные методы

		#region Методы обработки данных
		/// <summary>
		/// Очистка
		/// </summary>
		public virtual void Clear( )
		{
			// Очистка предупреждающих пометок ошибочных полей
			this.errorProvider.Clear( );
		} // Clear

		/// <summary>
		/// Загрузка параметров хранимой процедуры
		/// </summary>
		/// <returns>Отчёт операции с результатами: SUCCESSFUL</returns>
		public virtual OperationReport LoadStoredProcedureParameters( )
		{
			return new OperationReport( );
		} // LoadInsertStoredProcedureParameters

		/// <summary>
		/// Вывод параметров хранимой процедуры
		/// </summary>
		public virtual void OutputStoredProcedureParameters( )
		{
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
		} // MarkInvalidParameter
		#endregion Методы обработки данных

		#region Конкретные методы редактирования
		/// <summary>
		/// Выполнение хранимой процедуры
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		public virtual void OnExecuteButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
		}// OnExecuteButtonClick
		#endregion Конкретные методы редактирования
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание формы редактирования сущности
		/// с действием редактирования по умолчанию
		/// </summary>
		public EditEntityForm( )
		{
			InitializeComponent( );
		} // EditEntityForm

		/// <summary>
		/// Создание формы редактирования сущности
		/// с заданным действием редактирования по умолчанию
		/// </summary>
		/// <param name="parEditingAction">Действие редактирования</param>
		public EditEntityForm( StoredProcedureAction parEditingAction )
		{
			InitializeComponent( );
			// Инициализация формы редактирования сущности
			this.Initialize( parEditingAction );
		} // EditEntityForm
		#endregion Конструкторы

		#region Свойства
		/// <summary>
		/// Действие редактирования
		/// </summary>
		public virtual StoredProcedureAction EditingAction
		{
			get
			{
				return this._EditingAction;
			} // get
		} // EditingAction
		#endregion Свойства
	} // EditEntityForm
} // CentralBusTerminalClient
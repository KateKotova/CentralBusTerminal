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
	/// Форма сообщений
	/// </summary>
	public partial class MessageForm : Form
	{
		#region Поля
		/// <summary>
		/// Строка символа показа детализированного сообщения
		/// </summary>
		protected const string _ShowDetailsSymbol = " >>";
		/// <summary>
		/// Строка символа сокрытия детализированного сообщения
		/// </summary>
		protected const string _HideDetailsSymbol = " <<";

		/// <summary>
		/// Высота окошка отображаемого детализированного сообщения
		/// </summary>
		protected const int _ShownDetailsMessageRichTextBoxHeight = 120;
		/// <summary>
		/// Высота отображаемого ботрика-перегородки на форме
		/// </summary>
		protected const int _FormBorderHeight                     = 10;

		/// <summary>
		/// Признак показа детализированного сообщения
		/// </summary>
		protected bool   _DetailsAreShown;
		/// <summary>
		/// Основная надпись на кнопке деталей
		/// </summary>
		protected string _BaseDetailsButtonText;
		#endregion Поля

		#region Методы
		/// <summary>
		/// Загрузка формы сообщений
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnMessageFormLoad
		(
			object    sender,
			EventArgs e
		)
		{
			// Сокрытие области детализированного сообщения

			// Признак неотображения деталей
			this._DetailsAreShown                  = false;
			// Сокрытие окошка детализированного сообщения
			this.detailsMessageRichTextBox.Visible = false;

			// Сжатие высоты формы на высоту области окна деталей
			// и бортика-перегородки перед ним
			this.Height -= Convert.ToInt32
				( this.formTableLayoutPanel.RowStyles[ 2 ].Height +
				  this.formTableLayoutPanel.RowStyles[ 3 ].Height );
			// Сжатие области окна деталей и бортика-перегородки перед ним
			this.formTableLayoutPanel.RowStyles[ 2 ].Height = 0;
			this.formTableLayoutPanel.RowStyles[ 3 ].Height = 0;

			// Если детализированное сообщение пусто,
			// то нет смысла отображения кнопки его показа
			if ( this.detailsMessageRichTextBox.Text == string.Empty )
				this.detailsButton.Visible = false;
			else
			{
				// Базовая надпись на кнопке деталей
				this._BaseDetailsButtonText = this.detailsButton.Text;
				// Изменение надписи на кнопке деталей: разрешение показа деталей
				this.detailsButton.Text    += MessageForm._ShowDetailsSymbol;
			} // else
		} // OnMessageFormLoad

		/// <summary>
		/// Показ\сокрытие детализированного сообщения
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnDetailsButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
			// Отрицание прежнего значения признака
			// показа детализированного сообщения
			this._DetailsAreShown = ! this._DetailsAreShown;

			// Если детали отображаются
			if ( this._DetailsAreShown )
			{
				// Разжатие высоты формы на высоту отображения окошка и бортика
				this.Height += MessageForm._FormBorderHeight +
					MessageForm._ShownDetailsMessageRichTextBoxHeight;
				// Показ области окна деталей и бортика-перегородки перед ним
				this.formTableLayoutPanel.RowStyles[ 2 ].Height =
					MessageForm._FormBorderHeight;
				this.formTableLayoutPanel.RowStyles[ 3 ].Height =
					MessageForm._ShownDetailsMessageRichTextBoxHeight;
				// Показ окошка детализированного сообщения
				this.detailsMessageRichTextBox.Visible = true;

				// Изменение надписи на кнопке деталей: разрешение сокрытия
				this.detailsButton.Text = this._BaseDetailsButtonText +
					MessageForm._HideDetailsSymbol;
			} // if
			else
			{
				// Сокрытие окошка детализированного сообщения
				this.detailsMessageRichTextBox.Visible = false;
				// Сжатие области окна деталей и бортика-перегородки перед ним
				this.formTableLayoutPanel.RowStyles[ 2 ].Height = 0;
				this.formTableLayoutPanel.RowStyles[ 3 ].Height = 0;
				// Сжатие высоты формы на высоту отображения
				// скрываемого окошка и бортика
				this.Height -= MessageForm._FormBorderHeight +
					MessageForm._ShownDetailsMessageRichTextBoxHeight;

				// Изменение надписи на кнопке деталей: разрешение показа
				this.detailsButton.Text = this._BaseDetailsButtonText +
					MessageForm._ShowDetailsSymbol;
			} // else
		} // OnDetailsButtonClick
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание формы сообщений по умолчаию
		/// </summary>
		public MessageForm( )
		{
			// Инициализация компонентоа
			InitializeComponent( );
		} // MessageForm

		/// <summary>
		/// Создание формы сообщений с заданным кратким сообщением
		/// и детализированным по умолчанию
		/// </summary>
		/// <param name="parShortMessage">Краткое сообщение</param>
		public MessageForm( string parShortMessage )
		{
			// Инициализация компонентоа
			InitializeComponent( );
			this.shortMessageLabel.Text = parShortMessage;
		} // MessageForm

		/// <summary>
		/// Создание формы сообщений с заданными кратким
		/// и детализированным сообщениями
		/// </summary>
		/// <param name="parShortMessage">Краткое сообщение</param>
		/// <param name="parDetailsMessage">Детализированное сообщение</param>
		public MessageForm
		(
			string parShortMessage,
			string parDetailsMessage
		)
		{
			// Инициализация компонентоа
			InitializeComponent( );
			this.shortMessageLabel.Text         = parShortMessage;
			this.detailsMessageRichTextBox.Text = parDetailsMessage;
		}

		private void formTableLayoutPanel_Paint( object sender, PaintEventArgs e )
		{

		} // MessageForm
		#endregion Конструкторы
	} // MessageForm
} // CentralBusTerminalClient
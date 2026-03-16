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
	/// Форма выбора режима
	/// </summary>
	public partial class ModeChoiceForm : Form
	{
		/// <summary>
		/// Показ формы показа таблиц
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnShowTablesButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
			new ShowTablesForm( ).ShowDialog( );
		} // OnShowTablesButtonClick

		/// <summary>
		/// Показ формы поиска остновок
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnFindStopsButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
			new StopsSearchForm( ).ShowDialog( );
		} // OnFindStopsButtonClick

		/// <summary>
		/// Показ формы поиска остновок маршрута
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnFindPathStopsButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
			new PathStopsSearchForm( ).ShowDialog( );
		} // OnFindPathStopsButtonClick

		/// <summary>
		/// Создание формы режима
		/// </summary>
		public ModeChoiceForm( )
		{
			InitializeComponent( );
		} // ModeChoiceForm
	} // ModeChoiceForm
} // CentralBusTerminalClient
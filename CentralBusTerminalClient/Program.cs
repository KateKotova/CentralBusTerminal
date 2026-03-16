using System;
using System.Collections.Generic;
using System.Windows.Forms;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Программа
	/// </summary>
	static class Program
	{
		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main( )
		{
			Application.EnableVisualStyles( );
			Application.SetCompatibleTextRenderingDefault( false );

			// Отображение главной формы в случае удачного подключения
			if ( new ConnectionForm( ).ShowDialog( ) == DialogResult.OK )
			{
				Application.Run( new ModeChoiceForm( ) );
			} // if
		} // Main
	} // Program
} // CentralBusTerminalClient
using System;
using System.Collections.Generic;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Аргументы события выполнения редактирования автобуса
	/// </summary>
	public class EditBusEventArgs: EventArgs
	{
		#region Поля
		/// <summary>
		/// Действие редактирования
		/// </summary>
		public StoredProcedureAction Action;
		/// <summary>
		/// Автомобильный номер
		/// </summary>
		public string                CarCode;
		#endregion Поля

		/// <summary>
		/// Создание аргументов события выполнения редактирования автобуса
		/// </summary>
		/// </summary>
		/// <param name="parAction">Действие редактирования</param>
		/// <param name="parCarCodee">Автомобильный номер</param>
		public EditBusEventArgs
		(
			StoredProcedureAction parAction,
			string                parCarCodee
		)
		{
			this.Action  = parAction;
			this.CarCode = parCarCodee;
		} // EditBusEventArgs
	} // EditBusEventArgs
} // CentralBusTerminalClient
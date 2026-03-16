using System;
using System.Collections.Generic;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Аргументы события выполнения редактирования выполнения рейса
	/// </summary>
	public class EditRunExecutionEventArgs: EventArgs
	{
		#region Поля
		/// <summary>
		/// Действие редактирования
		/// </summary>
		public StoredProcedureAction Action;
		/// <summary>
		/// Дата
		/// </summary>
		public string                Date;
		/// <summary>
		/// Маршрут
		/// </summary>
		public string                Path;
		/// <summary>
		/// Категория автобуса
		/// </summary>
		public string                BusCategory;
		/// <summary>
		/// Дань недели
		/// </summary>
		public string                Weekday;
		/// <summary>
		/// Время
		/// </summary>
		public string                Time;
		/// <summary>
		/// Автомобильный номер автобуса
		/// </summary>
		public string                BusCarCode;
		/// <summary>
		/// Паспортные данные водителя автобуса
		/// </summary>
		public string                DriverPassportData;
		#endregion Поля

		/// <summary>
		/// Создание аргументов события выполнения редактирования выполнения рейса
		/// </summary>
		/// </summary>
		/// <param name="parAction">Действие редактирования</param>
		/// <param name="parDate">Дата</param>
		/// <param name="parPath">Маршрут</param>
		/// <param name="parBusCategory">Категория автобуса</param>
		/// <param name="parWeekday">Дань недели</param>
		/// <param name="parTime">Время</param>
		/// <param name="parBusCarCode">Автомобильный номер автобуса</param>
		/// <param name="parDriverPassportData">
		/// Паспортные данные водителя автобуса</param>
		public EditRunExecutionEventArgs
		(
			StoredProcedureAction parAction,
			string                parDate,
			string                parPath,
			string                parBusCategory,
			string                parWeekday,
			string                parTime,
			string                parBusCarCode,
			string                parDriverPassportData
		)
		{
			this.Action  = parAction;
			this.Date               = parDate;
			this.Path               = parPath;
			this.BusCategory        = parBusCategory;
			this.Weekday            = parWeekday;
			this.Time               = parTime;
			this.BusCarCode         = parBusCarCode;
			this.DriverPassportData = parDriverPassportData;
		} // EditRunExecutionEventArgs
	} // EditRunExecutionEventArgs
} // CentralBusTerminalClient
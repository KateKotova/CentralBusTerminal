using System;
using System.Collections.Generic;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Элемент координат остановки на карте маршрута
	/// </summary>
	public struct PathMapStopCoordinatesItem
	{
		#region Поля
		/// <summary>
		/// Номер остановки в пределах маршрута
		/// </summary>
		public byte   PathStopNumber;
		/// <summary>
		/// Остановка
		/// </summary>
		public string Stop;
		/// <summary>
		/// Абсцисса остановки
		/// </summary>
		public double StopX;
		/// <summary>
		/// Ордината остановки
		/// </summary>
		public double StopY;
		#endregion Поля

		/// <summary>
		/// Создание элемента координат остановки на карте маршрута
		/// </summary>
		/// <param name="parPathStopNumber">
		/// Номер остановки в пределах маршрута</param>
		/// <param name="parStop">Остановка</param>
		/// <param name="parStopX">Абсцисса остановки</param>
		/// <param name="parStopY">Ордината остановки</param>
		public PathMapStopCoordinatesItem
		(
			byte   parPathStopNumber,
			string parStop,
			double parStopX,
			double parStopY
		)
		{
			this.PathStopNumber = parPathStopNumber;
			this.Stop           = parStop;
			this.StopX          = parStopX;
			this.StopY          = parStopY;
		} // PathMapStopCoordinatesItem
	} // PathMapStopCoordinatesItem
} // CentralBusTerminalClient
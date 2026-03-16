using System;
using System.Collections.Generic;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Элемент карты маршрута
	/// </summary>
	public struct PathMapItem
	{
		#region Поля
		/// <summary>
		/// Карта
		/// </summary>
		public string Map;
		/// <summary>
		/// Абсцисса начального пункта
		/// </summary>
		public double InitialPointX;
		/// <summary>
		/// Ордината начального пункта
		/// </summary>
		public double InitialPointY;
		#endregion Поля

		/// <summary>
		/// Создание элемента карты маршрута
		/// </summary>
		/// <param name="parMap">Карта</param>
		/// <param name="parInitialPointX">Абсцисса начального пункта</param>
		/// <param name="parInitialPointY">Ордината начального пункта</param>
		public PathMapItem
		(
			string parMap,
			double parInitialPointX,
			double parInitialPointY
		)
		{
			this.Map           = parMap;
			this.InitialPointX = parInitialPointX;
			this.InitialPointY = parInitialPointY;
		} // PathMapItem
	} // PathMapItem
} // CentralBusTerminalClient
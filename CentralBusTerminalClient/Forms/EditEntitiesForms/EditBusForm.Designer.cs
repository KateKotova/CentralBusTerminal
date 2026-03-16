namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма редактирования автобуса
	/// </summary>
	partial class EditBusForm
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose( bool disposing )
		{
			if ( disposing && ( components != null ) )
			{
				components.Dispose( );
			} // if
			base.Dispose( disposing );
		} // Dispose

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent( )
		{
			this.components = new System.ComponentModel.Container();
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(EditBusForm));
			this.formTableLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
			this.activityStateComboBox = new System.Windows.Forms.ComboBox();
			this.recordsActivitiesStatesBindingSource = new System.Windows.Forms.BindingSource(this.components);
			this.usageStartYearTextBox = new System.Windows.Forms.TextBox();
			this.seatsQuantityTextBox = new System.Windows.Forms.TextBox();
			this.activityStateLabel = new System.Windows.Forms.Label();
			this.sanityStateLabel = new System.Windows.Forms.Label();
			this.usageStartYearLabel = new System.Windows.Forms.Label();
			this.sanityStateComboBox = new System.Windows.Forms.ComboBox();
			this.busesSanitiesStatesBindingSource = new System.Windows.Forms.BindingSource(this.components);
			this.categoryComboBox = new System.Windows.Forms.ComboBox();
			this.busesCategoriesBindingSource = new System.Windows.Forms.BindingSource(this.components);
			this.carCodeTextBox = new System.Windows.Forms.TextBox();
			this.oldCarCodeComboBox = new System.Windows.Forms.ComboBox();
			this.oldBusesBindingSource = new System.Windows.Forms.BindingSource(this.components);
			this.oldCarCodeLabel = new System.Windows.Forms.Label();
			this.carCodeLabel = new System.Windows.Forms.Label();
			this.categoryLabel = new System.Windows.Forms.Label();
			this.seatsQuantityLabel = new System.Windows.Forms.Label();
			((System.ComponentModel.ISupportInitialize)(this.centralBusTerminalDataSet)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.errorProvider)).BeginInit();
			this.formTableLayoutPanel.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.recordsActivitiesStatesBindingSource)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.busesSanitiesStatesBindingSource)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.busesCategoriesBindingSource)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.oldBusesBindingSource)).BeginInit();
			this.SuspendLayout();
			// 
			// imageList
			// 
			this.imageList.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList.ImageStream")));
			this.imageList.Images.SetKeyName(0, "closeIcon");
			this.imageList.Images.SetKeyName(1, "insertIcon");
			this.imageList.Images.SetKeyName(2, "updateIcon");
			this.imageList.Images.SetKeyName(3, "deleteIcon");
			// 
			// formTableLayoutPanel
			// 
			this.formTableLayoutPanel.ColumnCount = 3;
			this.formTableLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 10F));
			this.formTableLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
			this.formTableLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 25F));
			this.formTableLayoutPanel.Controls.Add(this.activityStateComboBox, 1, 14);
			this.formTableLayoutPanel.Controls.Add(this.usageStartYearTextBox, 1, 10);
			this.formTableLayoutPanel.Controls.Add(this.seatsQuantityTextBox, 1, 8);
			this.formTableLayoutPanel.Controls.Add(this.activityStateLabel, 1, 13);
			this.formTableLayoutPanel.Controls.Add(this.sanityStateLabel, 1, 11);
			this.formTableLayoutPanel.Controls.Add(this.usageStartYearLabel, 1, 9);
			this.formTableLayoutPanel.Controls.Add(this.sanityStateComboBox, 1, 12);
			this.formTableLayoutPanel.Controls.Add(this.categoryComboBox, 1, 6);
			this.formTableLayoutPanel.Controls.Add(this.carCodeTextBox, 1, 4);
			this.formTableLayoutPanel.Controls.Add(this.oldCarCodeComboBox, 1, 2);
			this.formTableLayoutPanel.Controls.Add(this.oldCarCodeLabel, 1, 1);
			this.formTableLayoutPanel.Controls.Add(this.carCodeLabel, 1, 3);
			this.formTableLayoutPanel.Controls.Add(this.categoryLabel, 1, 5);
			this.formTableLayoutPanel.Controls.Add(this.seatsQuantityLabel, 1, 7);
			this.formTableLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.formTableLayoutPanel.Location = new System.Drawing.Point(0, 0);
			this.formTableLayoutPanel.Margin = new System.Windows.Forms.Padding(0);
			this.formTableLayoutPanel.Name = "formTableLayoutPanel";
			this.formTableLayoutPanel.RowCount = 16;
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 10F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 35F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 24F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 35F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 24F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 35F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 24F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 35F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 24F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 35F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 24F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 35F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 24F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 35F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 24F));
			this.formTableLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
			this.formTableLayoutPanel.Size = new System.Drawing.Size(339, 457);
			this.formTableLayoutPanel.TabIndex = 23;
			// 
			// activityStateComboBox
			// 
			this.activityStateComboBox.DataSource = this.recordsActivitiesStatesBindingSource;
			this.activityStateComboBox.DisplayMember = "Name";
			this.activityStateComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.activityStateComboBox.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.activityStateComboBox.FormattingEnabled = true;
			this.activityStateComboBox.Location = new System.Drawing.Point(10, 399);
			this.activityStateComboBox.Margin = new System.Windows.Forms.Padding(0);
			this.activityStateComboBox.Name = "activityStateComboBox";
			this.activityStateComboBox.Size = new System.Drawing.Size(304, 21);
			this.activityStateComboBox.TabIndex = 28;
			// 
			// recordsActivitiesStatesBindingSource
			// 
			this.recordsActivitiesStatesBindingSource.DataMember = "RecordsActivitiesStates";
			this.recordsActivitiesStatesBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// usageStartYearTextBox
			// 
			this.usageStartYearTextBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.usageStartYearTextBox.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.usageStartYearTextBox.Location = new System.Drawing.Point(10, 281);
			this.usageStartYearTextBox.Margin = new System.Windows.Forms.Padding(0);
			this.usageStartYearTextBox.Name = "usageStartYearTextBox";
			this.usageStartYearTextBox.Size = new System.Drawing.Size(304, 21);
			this.usageStartYearTextBox.TabIndex = 27;
			this.usageStartYearTextBox.WordWrap = false;
			// 
			// seatsQuantityTextBox
			// 
			this.seatsQuantityTextBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.seatsQuantityTextBox.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.seatsQuantityTextBox.Location = new System.Drawing.Point(10, 222);
			this.seatsQuantityTextBox.Margin = new System.Windows.Forms.Padding(0);
			this.seatsQuantityTextBox.Name = "seatsQuantityTextBox";
			this.seatsQuantityTextBox.Size = new System.Drawing.Size(304, 21);
			this.seatsQuantityTextBox.TabIndex = 26;
			this.seatsQuantityTextBox.WordWrap = false;
			// 
			// activityStateLabel
			// 
			this.activityStateLabel.AutoSize = true;
			this.activityStateLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.activityStateLabel.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.activityStateLabel.Location = new System.Drawing.Point(15, 369);
			this.activityStateLabel.Margin = new System.Windows.Forms.Padding(5);
			this.activityStateLabel.Name = "activityStateLabel";
			this.activityStateLabel.Size = new System.Drawing.Size(294, 25);
			this.activityStateLabel.TabIndex = 25;
			this.activityStateLabel.Text = "Состояние активности";
			this.activityStateLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// sanityStateLabel
			// 
			this.sanityStateLabel.AutoSize = true;
			this.sanityStateLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.sanityStateLabel.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.sanityStateLabel.Location = new System.Drawing.Point(15, 310);
			this.sanityStateLabel.Margin = new System.Windows.Forms.Padding(5);
			this.sanityStateLabel.Name = "sanityStateLabel";
			this.sanityStateLabel.Size = new System.Drawing.Size(294, 25);
			this.sanityStateLabel.TabIndex = 24;
			this.sanityStateLabel.Text = "Состояние исправности";
			this.sanityStateLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// usageStartYearLabel
			// 
			this.usageStartYearLabel.AutoSize = true;
			this.usageStartYearLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.usageStartYearLabel.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.usageStartYearLabel.Location = new System.Drawing.Point(15, 251);
			this.usageStartYearLabel.Margin = new System.Windows.Forms.Padding(5);
			this.usageStartYearLabel.Name = "usageStartYearLabel";
			this.usageStartYearLabel.Size = new System.Drawing.Size(294, 25);
			this.usageStartYearLabel.TabIndex = 23;
			this.usageStartYearLabel.Text = "Год начала эксплуатации";
			this.usageStartYearLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// sanityStateComboBox
			// 
			this.sanityStateComboBox.DataSource = this.busesSanitiesStatesBindingSource;
			this.sanityStateComboBox.DisplayMember = "Name";
			this.sanityStateComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.sanityStateComboBox.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.sanityStateComboBox.FormattingEnabled = true;
			this.sanityStateComboBox.Location = new System.Drawing.Point(10, 340);
			this.sanityStateComboBox.Margin = new System.Windows.Forms.Padding(0);
			this.sanityStateComboBox.Name = "sanityStateComboBox";
			this.sanityStateComboBox.Size = new System.Drawing.Size(304, 21);
			this.sanityStateComboBox.TabIndex = 3;
			// 
			// busesSanitiesStatesBindingSource
			// 
			this.busesSanitiesStatesBindingSource.DataMember = "BusesSanitiesStates";
			this.busesSanitiesStatesBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// categoryComboBox
			// 
			this.categoryComboBox.DataSource = this.busesCategoriesBindingSource;
			this.categoryComboBox.DisplayMember = "Name";
			this.categoryComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.categoryComboBox.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.categoryComboBox.FormattingEnabled = true;
			this.categoryComboBox.Location = new System.Drawing.Point(10, 163);
			this.categoryComboBox.Margin = new System.Windows.Forms.Padding(0);
			this.categoryComboBox.Name = "categoryComboBox";
			this.categoryComboBox.Size = new System.Drawing.Size(304, 21);
			this.categoryComboBox.TabIndex = 2;
			// 
			// busesCategoriesBindingSource
			// 
			this.busesCategoriesBindingSource.DataMember = "BusesCategories";
			this.busesCategoriesBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// carCodeTextBox
			// 
			this.carCodeTextBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.carCodeTextBox.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.carCodeTextBox.Location = new System.Drawing.Point(10, 104);
			this.carCodeTextBox.Margin = new System.Windows.Forms.Padding(0);
			this.carCodeTextBox.Name = "carCodeTextBox";
			this.carCodeTextBox.Size = new System.Drawing.Size(304, 21);
			this.carCodeTextBox.TabIndex = 1;
			this.carCodeTextBox.WordWrap = false;
			// 
			// oldCarCodeComboBox
			// 
			this.oldCarCodeComboBox.DataSource = this.oldBusesBindingSource;
			this.oldCarCodeComboBox.DisplayMember = "CarCode";
			this.oldCarCodeComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldCarCodeComboBox.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.oldCarCodeComboBox.FormattingEnabled = true;
			this.oldCarCodeComboBox.Location = new System.Drawing.Point(10, 45);
			this.oldCarCodeComboBox.Margin = new System.Windows.Forms.Padding(0);
			this.oldCarCodeComboBox.Name = "oldCarCodeComboBox";
			this.oldCarCodeComboBox.Size = new System.Drawing.Size(304, 21);
			this.oldCarCodeComboBox.TabIndex = 0;
			// 
			// oldBusesBindingSource
			// 
			this.oldBusesBindingSource.DataMember = "Buses";
			this.oldBusesBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// oldCarCodeLabel
			// 
			this.oldCarCodeLabel.AutoSize = true;
			this.oldCarCodeLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldCarCodeLabel.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.oldCarCodeLabel.Location = new System.Drawing.Point(15, 15);
			this.oldCarCodeLabel.Margin = new System.Windows.Forms.Padding(5);
			this.oldCarCodeLabel.Name = "oldCarCodeLabel";
			this.oldCarCodeLabel.Size = new System.Drawing.Size(294, 25);
			this.oldCarCodeLabel.TabIndex = 22;
			this.oldCarCodeLabel.Text = "Прежний автомобильный номер";
			this.oldCarCodeLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// carCodeLabel
			// 
			this.carCodeLabel.AutoSize = true;
			this.carCodeLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.carCodeLabel.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.carCodeLabel.Location = new System.Drawing.Point(15, 74);
			this.carCodeLabel.Margin = new System.Windows.Forms.Padding(5);
			this.carCodeLabel.Name = "carCodeLabel";
			this.carCodeLabel.Size = new System.Drawing.Size(294, 25);
			this.carCodeLabel.TabIndex = 22;
			this.carCodeLabel.Text = "Автомобильный номер";
			this.carCodeLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// categoryLabel
			// 
			this.categoryLabel.AutoSize = true;
			this.categoryLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.categoryLabel.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.categoryLabel.Location = new System.Drawing.Point(15, 133);
			this.categoryLabel.Margin = new System.Windows.Forms.Padding(5);
			this.categoryLabel.Name = "categoryLabel";
			this.categoryLabel.Size = new System.Drawing.Size(294, 25);
			this.categoryLabel.TabIndex = 22;
			this.categoryLabel.Text = "Категория";
			this.categoryLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// seatsQuantityLabel
			// 
			this.seatsQuantityLabel.AutoSize = true;
			this.seatsQuantityLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.seatsQuantityLabel.Font = new System.Drawing.Font("Tahoma", 8.25F);
			this.seatsQuantityLabel.Location = new System.Drawing.Point(15, 192);
			this.seatsQuantityLabel.Margin = new System.Windows.Forms.Padding(5);
			this.seatsQuantityLabel.Name = "seatsQuantityLabel";
			this.seatsQuantityLabel.Size = new System.Drawing.Size(294, 25);
			this.seatsQuantityLabel.TabIndex = 22;
			this.seatsQuantityLabel.Text = "Количество пассажирских мест";
			this.seatsQuantityLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// EditBusForm
			// 
			this.ClientSize = new System.Drawing.Size(339, 502);
			this.Controls.Add(this.formTableLayoutPanel);
			this.Name = "EditBusForm";
			this.Text = "EditBusForm";
			this.Controls.SetChildIndex(this.formTableLayoutPanel, 0);
			((System.ComponentModel.ISupportInitialize)(this.centralBusTerminalDataSet)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.errorProvider)).EndInit();
			this.formTableLayoutPanel.ResumeLayout(false);
			this.formTableLayoutPanel.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.recordsActivitiesStatesBindingSource)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.busesSanitiesStatesBindingSource)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.busesCategoriesBindingSource)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.oldBusesBindingSource)).EndInit();
			this.ResumeLayout(false);

		} // InitializeComponent

		#endregion

		/// <summary>
		/// Панель выравнивания элементов формы
		/// </summary>
		protected System.Windows.Forms.TableLayoutPanel formTableLayoutPanel;

		/// <summary>
		/// Связующий источник прежних автобусов
		/// </summary>
		protected System.Windows.Forms.BindingSource oldBusesBindingSource;
		/// <summary>
		/// Связующий источник категорий автобусов
		/// </summary>
		protected System.Windows.Forms.BindingSource busesCategoriesBindingSource;
		/// <summary>
		/// Связующий источник состояний исправности автобусов
		/// </summary>
		protected System.Windows.Forms.BindingSource
			busesSanitiesStatesBindingSource;
		/// <summary>
		/// Связующий источник состояний активности записей
		/// </summary>
		protected System.Windows.Forms.BindingSource
			recordsActivitiesStatesBindingSource;

		/// <summary>
		/// Метка прежнего автомобильного номера
		/// </summary>
		protected System.Windows.Forms.Label oldCarCodeLabel;
		/// <summary>
		/// Выпадающий список прежнего автомобильного номера
		/// </summary>
		protected System.Windows.Forms.ComboBox oldCarCodeComboBox;

		/// <summary>
		/// Метка автомобильного номера
		/// </summary>
		protected System.Windows.Forms.Label carCodeLabel;
		/// <summary>
		/// Текстовая коробочка автомобильного номера
		/// </summary>
		protected System.Windows.Forms.TextBox carCodeTextBox;

		/// <summary>
		/// Метка категории
		/// </summary>
		protected System.Windows.Forms.Label categoryLabel;
		/// <summary>
		/// Выпадающий список категории
		/// </summary>
		protected System.Windows.Forms.ComboBox categoryComboBox;

		/// <summary>
		/// Метка количества пассажирских мест
		/// </summary>
		protected System.Windows.Forms.Label seatsQuantityLabel;
		/// <summary>
		/// Текстовая коробочка количества пассажирских мест
		/// </summary>
		protected System.Windows.Forms.TextBox seatsQuantityTextBox;

		/// <summary>
		/// Метка года начала эксплуатации
		/// </summary>
		protected System.Windows.Forms.Label usageStartYearLabel;
		/// <summary>
		/// Текстовая коробочка года начала эксплуатации
		/// </summary>
		protected System.Windows.Forms.TextBox usageStartYearTextBox;

		/// <summary>
		/// Метка состояния исправности
		/// </summary>
		protected System.Windows.Forms.Label sanityStateLabel;
		/// <summary>
		/// Выпадающий список состояния исправности
		/// </summary>
		protected System.Windows.Forms.ComboBox sanityStateComboBox;

		/// <summary>
		/// Метка состояния активности
		/// </summary>
		protected System.Windows.Forms.Label activityStateLabel;
		/// <summary>
		/// Выпадающий список состояния активности
		/// </summary>
		protected System.Windows.Forms.ComboBox activityStateComboBox;

	} // EditBusForm
} // CentralBusTerminalClient

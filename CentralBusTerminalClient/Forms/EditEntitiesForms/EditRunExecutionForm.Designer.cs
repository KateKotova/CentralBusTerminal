namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма редактирования выполнения рейса
	/// </summary>
	partial class EditRunExecutionForm
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
			this.components = new System.ComponentModel.Container( );
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager( typeof( EditRunExecutionForm ) );
			this.oldPathsBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.pathsBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.oldBusesCategoriesBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.busesCategoriesBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.oldWeekdaysBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.weekdaysBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.oldBusesBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.busesBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.oldDriversBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.driversBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.formTableLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.timeDateTimePicker = new System.Windows.Forms.DateTimePicker( );
			this.driverPassportDataComboBox = new System.Windows.Forms.ComboBox( );
			this.driverPassportDataLabel = new System.Windows.Forms.Label( );
			this.busCarCodeComboBox = new System.Windows.Forms.ComboBox( );
			this.busCarCodeLabel = new System.Windows.Forms.Label( );
			this.timeLabel = new System.Windows.Forms.Label( );
			this.weekdayComboBox = new System.Windows.Forms.ComboBox( );
			this.weekdayLabel = new System.Windows.Forms.Label( );
			this.busCategoryComboBox = new System.Windows.Forms.ComboBox( );
			this.busCategoryLabel = new System.Windows.Forms.Label( );
			this.pathComboBox = new System.Windows.Forms.ComboBox( );
			this.pathLabel = new System.Windows.Forms.Label( );
			this.dateDateTimePicker = new System.Windows.Forms.DateTimePicker( );
			this.dateLabel = new System.Windows.Forms.Label( );
			this.oldTimeDateTimePicker = new System.Windows.Forms.DateTimePicker( );
			this.oldWeekdayComboBox = new System.Windows.Forms.ComboBox( );
			this.oldDateDateTimePicker = new System.Windows.Forms.DateTimePicker( );
			this.oldDriverPassportDataComboBox = new System.Windows.Forms.ComboBox( );
			this.oldDriverPassportDataLabel = new System.Windows.Forms.Label( );
			this.oldBusCarCodeLabel = new System.Windows.Forms.Label( );
			this.oldTimeLabel = new System.Windows.Forms.Label( );
			this.oldBusCarCodeComboBox = new System.Windows.Forms.ComboBox( );
			this.oldBusCategoryComboBox = new System.Windows.Forms.ComboBox( );
			this.oldPathComboBox = new System.Windows.Forms.ComboBox( );
			this.oldDateLabel = new System.Windows.Forms.Label( );
			this.oldPathLabel = new System.Windows.Forms.Label( );
			this.oldBusCategoryLabel = new System.Windows.Forms.Label( );
			this.oldWeekdayLabel = new System.Windows.Forms.Label( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.centralBusTerminalDataSet ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.errorProvider ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.oldPathsBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.pathsBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.oldBusesCategoriesBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.busesCategoriesBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.oldWeekdaysBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.weekdaysBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.oldBusesBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.busesBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.oldDriversBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.driversBindingSource ) ).BeginInit( );
			this.formTableLayoutPanel.SuspendLayout( );
			this.SuspendLayout( );
			// 
			// imageList
			// 
			this.imageList.ImageStream = ( ( System.Windows.Forms.ImageListStreamer ) ( resources.GetObject( "imageList.ImageStream" ) ) );
			this.imageList.Images.SetKeyName( 0, "closeIcon" );
			this.imageList.Images.SetKeyName( 1, "insertIcon" );
			this.imageList.Images.SetKeyName( 2, "updateIcon" );
			this.imageList.Images.SetKeyName( 3, "deleteIcon" );
			// 
			// oldPathsBindingSource
			// 
			this.oldPathsBindingSource.DataMember = "Paths";
			this.oldPathsBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// pathsBindingSource
			// 
			this.pathsBindingSource.DataMember = "Paths";
			this.pathsBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// oldBusesCategoriesBindingSource
			// 
			this.oldBusesCategoriesBindingSource.DataMember = "BusesCategories";
			this.oldBusesCategoriesBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// busesCategoriesBindingSource
			// 
			this.busesCategoriesBindingSource.DataMember = "BusesCategories";
			this.busesCategoriesBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// oldWeekdaysBindingSource
			// 
			this.oldWeekdaysBindingSource.DataMember = "Weekdays";
			this.oldWeekdaysBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// weekdaysBindingSource
			// 
			this.weekdaysBindingSource.DataMember = "Weekdays";
			this.weekdaysBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// oldBusesBindingSource
			// 
			this.oldBusesBindingSource.DataMember = "Buses";
			this.oldBusesBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// busesBindingSource
			// 
			this.busesBindingSource.DataMember = "Buses";
			this.busesBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// oldDriversBindingSource
			// 
			this.oldDriversBindingSource.DataMember = "Drivers";
			this.oldDriversBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// driversBindingSource
			// 
			this.driversBindingSource.DataMember = "Drivers";
			this.driversBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// formTableLayoutPanel
			// 
			this.formTableLayoutPanel.ColumnCount = 6;
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 50F ) );
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 25F ) );
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 50F ) );
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 25F ) );
			this.formTableLayoutPanel.Controls.Add( this.timeDateTimePicker, 4, 10 );
			this.formTableLayoutPanel.Controls.Add( this.driverPassportDataComboBox, 4, 14 );
			this.formTableLayoutPanel.Controls.Add( this.driverPassportDataLabel, 4, 13 );
			this.formTableLayoutPanel.Controls.Add( this.busCarCodeComboBox, 4, 12 );
			this.formTableLayoutPanel.Controls.Add( this.busCarCodeLabel, 4, 11 );
			this.formTableLayoutPanel.Controls.Add( this.timeLabel, 4, 9 );
			this.formTableLayoutPanel.Controls.Add( this.weekdayComboBox, 4, 8 );
			this.formTableLayoutPanel.Controls.Add( this.weekdayLabel, 4, 7 );
			this.formTableLayoutPanel.Controls.Add( this.busCategoryComboBox, 4, 6 );
			this.formTableLayoutPanel.Controls.Add( this.busCategoryLabel, 4, 5 );
			this.formTableLayoutPanel.Controls.Add( this.pathComboBox, 4, 4 );
			this.formTableLayoutPanel.Controls.Add( this.pathLabel, 4, 3 );
			this.formTableLayoutPanel.Controls.Add( this.dateDateTimePicker, 4, 2 );
			this.formTableLayoutPanel.Controls.Add( this.dateLabel, 4, 1 );
			this.formTableLayoutPanel.Controls.Add( this.oldTimeDateTimePicker, 1, 10 );
			this.formTableLayoutPanel.Controls.Add( this.oldWeekdayComboBox, 1, 8 );
			this.formTableLayoutPanel.Controls.Add( this.oldDateDateTimePicker, 1, 2 );
			this.formTableLayoutPanel.Controls.Add( this.oldDriverPassportDataComboBox, 1, 14 );
			this.formTableLayoutPanel.Controls.Add( this.oldDriverPassportDataLabel, 1, 13 );
			this.formTableLayoutPanel.Controls.Add( this.oldBusCarCodeLabel, 1, 11 );
			this.formTableLayoutPanel.Controls.Add( this.oldTimeLabel, 1, 9 );
			this.formTableLayoutPanel.Controls.Add( this.oldBusCarCodeComboBox, 1, 12 );
			this.formTableLayoutPanel.Controls.Add( this.oldBusCategoryComboBox, 1, 6 );
			this.formTableLayoutPanel.Controls.Add( this.oldPathComboBox, 1, 4 );
			this.formTableLayoutPanel.Controls.Add( this.oldDateLabel, 1, 1 );
			this.formTableLayoutPanel.Controls.Add( this.oldPathLabel, 1, 3 );
			this.formTableLayoutPanel.Controls.Add( this.oldBusCategoryLabel, 1, 5 );
			this.formTableLayoutPanel.Controls.Add( this.oldWeekdayLabel, 1, 7 );
			this.formTableLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.formTableLayoutPanel.Location = new System.Drawing.Point( 0, 0 );
			this.formTableLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.formTableLayoutPanel.Name = "formTableLayoutPanel";
			this.formTableLayoutPanel.RowCount = 16;
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.Size = new System.Drawing.Size( 749, 451 );
			this.formTableLayoutPanel.TabIndex = 24;
			// 
			// timeDateTimePicker
			// 
			this.timeDateTimePicker.Dock = System.Windows.Forms.DockStyle.Fill;
			this.timeDateTimePicker.Format = System.Windows.Forms.DateTimePickerFormat.Time;
			this.timeDateTimePicker.Location = new System.Drawing.Point( 384, 281 );
			this.timeDateTimePicker.Margin = new System.Windows.Forms.Padding( 0 );
			this.timeDateTimePicker.Name = "timeDateTimePicker";
			this.timeDateTimePicker.Size = new System.Drawing.Size( 339, 24 );
			this.timeDateTimePicker.TabIndex = 46;
			// 
			// driverPassportDataComboBox
			// 
			this.driverPassportDataComboBox.DataSource = this.driversBindingSource;
			this.driverPassportDataComboBox.DisplayMember = "PassportData";
			this.driverPassportDataComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.driverPassportDataComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.driverPassportDataComboBox.FormattingEnabled = true;
			this.driverPassportDataComboBox.Location = new System.Drawing.Point( 384, 399 );
			this.driverPassportDataComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.driverPassportDataComboBox.Name = "driverPassportDataComboBox";
			this.driverPassportDataComboBox.Size = new System.Drawing.Size( 339, 25 );
			this.driverPassportDataComboBox.TabIndex = 45;
			// 
			// driverPassportDataLabel
			// 
			this.driverPassportDataLabel.AutoSize = true;
			this.driverPassportDataLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.driverPassportDataLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.driverPassportDataLabel.Location = new System.Drawing.Point( 389, 369 );
			this.driverPassportDataLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.driverPassportDataLabel.Name = "driverPassportDataLabel";
			this.driverPassportDataLabel.Size = new System.Drawing.Size( 329, 25 );
			this.driverPassportDataLabel.TabIndex = 44;
			this.driverPassportDataLabel.Text = "Паспортные данные водителя автобуса";
			this.driverPassportDataLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// busCarCodeComboBox
			// 
			this.busCarCodeComboBox.DataSource = this.busesBindingSource;
			this.busCarCodeComboBox.DisplayMember = "CarCode";
			this.busCarCodeComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.busCarCodeComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.busCarCodeComboBox.FormattingEnabled = true;
			this.busCarCodeComboBox.Location = new System.Drawing.Point( 384, 340 );
			this.busCarCodeComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.busCarCodeComboBox.Name = "busCarCodeComboBox";
			this.busCarCodeComboBox.Size = new System.Drawing.Size( 339, 25 );
			this.busCarCodeComboBox.TabIndex = 43;
			// 
			// busCarCodeLabel
			// 
			this.busCarCodeLabel.AutoSize = true;
			this.busCarCodeLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.busCarCodeLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.busCarCodeLabel.Location = new System.Drawing.Point( 389, 310 );
			this.busCarCodeLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.busCarCodeLabel.Name = "busCarCodeLabel";
			this.busCarCodeLabel.Size = new System.Drawing.Size( 329, 25 );
			this.busCarCodeLabel.TabIndex = 42;
			this.busCarCodeLabel.Text = "Автомобильный номер автобуса";
			this.busCarCodeLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// timeLabel
			// 
			this.timeLabel.AutoSize = true;
			this.timeLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.timeLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.timeLabel.Location = new System.Drawing.Point( 389, 251 );
			this.timeLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.timeLabel.Name = "timeLabel";
			this.timeLabel.Size = new System.Drawing.Size( 329, 25 );
			this.timeLabel.TabIndex = 40;
			this.timeLabel.Text = "Время";
			this.timeLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// weekdayComboBox
			// 
			this.weekdayComboBox.DataSource = this.weekdaysBindingSource;
			this.weekdayComboBox.DisplayMember = "Name";
			this.weekdayComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.weekdayComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.weekdayComboBox.FormattingEnabled = true;
			this.weekdayComboBox.Location = new System.Drawing.Point( 384, 222 );
			this.weekdayComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.weekdayComboBox.Name = "weekdayComboBox";
			this.weekdayComboBox.Size = new System.Drawing.Size( 339, 25 );
			this.weekdayComboBox.TabIndex = 39;
			// 
			// weekdayLabel
			// 
			this.weekdayLabel.AutoSize = true;
			this.weekdayLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.weekdayLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.weekdayLabel.Location = new System.Drawing.Point( 389, 192 );
			this.weekdayLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.weekdayLabel.Name = "weekdayLabel";
			this.weekdayLabel.Size = new System.Drawing.Size( 329, 25 );
			this.weekdayLabel.TabIndex = 38;
			this.weekdayLabel.Text = "День недели";
			this.weekdayLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// busCategoryComboBox
			// 
			this.busCategoryComboBox.DataSource = this.busesCategoriesBindingSource;
			this.busCategoryComboBox.DisplayMember = "Name";
			this.busCategoryComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.busCategoryComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.busCategoryComboBox.FormattingEnabled = true;
			this.busCategoryComboBox.Location = new System.Drawing.Point( 384, 163 );
			this.busCategoryComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.busCategoryComboBox.Name = "busCategoryComboBox";
			this.busCategoryComboBox.Size = new System.Drawing.Size( 339, 25 );
			this.busCategoryComboBox.TabIndex = 37;
			// 
			// busCategoryLabel
			// 
			this.busCategoryLabel.AutoSize = true;
			this.busCategoryLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.busCategoryLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.busCategoryLabel.Location = new System.Drawing.Point( 389, 133 );
			this.busCategoryLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.busCategoryLabel.Name = "busCategoryLabel";
			this.busCategoryLabel.Size = new System.Drawing.Size( 329, 25 );
			this.busCategoryLabel.TabIndex = 36;
			this.busCategoryLabel.Text = "Категория автобуса";
			this.busCategoryLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// pathComboBox
			// 
			this.pathComboBox.DataSource = this.pathsBindingSource;
			this.pathComboBox.DisplayMember = "Name";
			this.pathComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.pathComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.pathComboBox.FormattingEnabled = true;
			this.pathComboBox.Location = new System.Drawing.Point( 384, 104 );
			this.pathComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.pathComboBox.Name = "pathComboBox";
			this.pathComboBox.Size = new System.Drawing.Size( 339, 25 );
			this.pathComboBox.TabIndex = 35;
			// 
			// pathLabel
			// 
			this.pathLabel.AutoSize = true;
			this.pathLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.pathLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.pathLabel.Location = new System.Drawing.Point( 389, 74 );
			this.pathLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.pathLabel.Name = "pathLabel";
			this.pathLabel.Size = new System.Drawing.Size( 329, 25 );
			this.pathLabel.TabIndex = 34;
			this.pathLabel.Text = "Маршрут";
			this.pathLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// dateDateTimePicker
			// 
			this.dateDateTimePicker.Dock = System.Windows.Forms.DockStyle.Fill;
			this.dateDateTimePicker.Location = new System.Drawing.Point( 384, 45 );
			this.dateDateTimePicker.Margin = new System.Windows.Forms.Padding( 0 );
			this.dateDateTimePicker.Name = "dateDateTimePicker";
			this.dateDateTimePicker.Size = new System.Drawing.Size( 339, 24 );
			this.dateDateTimePicker.TabIndex = 33;
			// 
			// dateLabel
			// 
			this.dateLabel.AutoSize = true;
			this.dateLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.dateLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.dateLabel.Location = new System.Drawing.Point( 389, 15 );
			this.dateLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.dateLabel.Name = "dateLabel";
			this.dateLabel.Size = new System.Drawing.Size( 329, 25 );
			this.dateLabel.TabIndex = 32;
			this.dateLabel.Text = "Дата";
			this.dateLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// oldTimeDateTimePicker
			// 
			this.oldTimeDateTimePicker.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldTimeDateTimePicker.Format = System.Windows.Forms.DateTimePickerFormat.Time;
			this.oldTimeDateTimePicker.Location = new System.Drawing.Point( 10, 281 );
			this.oldTimeDateTimePicker.Margin = new System.Windows.Forms.Padding( 0 );
			this.oldTimeDateTimePicker.Name = "oldTimeDateTimePicker";
			this.oldTimeDateTimePicker.Size = new System.Drawing.Size( 339, 24 );
			this.oldTimeDateTimePicker.TabIndex = 31;
			// 
			// oldWeekdayComboBox
			// 
			this.oldWeekdayComboBox.DataSource = this.oldWeekdaysBindingSource;
			this.oldWeekdayComboBox.DisplayMember = "Name";
			this.oldWeekdayComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldWeekdayComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldWeekdayComboBox.FormattingEnabled = true;
			this.oldWeekdayComboBox.Location = new System.Drawing.Point( 10, 222 );
			this.oldWeekdayComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.oldWeekdayComboBox.Name = "oldWeekdayComboBox";
			this.oldWeekdayComboBox.Size = new System.Drawing.Size( 339, 25 );
			this.oldWeekdayComboBox.TabIndex = 30;
			// 
			// oldDateDateTimePicker
			// 
			this.oldDateDateTimePicker.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldDateDateTimePicker.Location = new System.Drawing.Point( 10, 45 );
			this.oldDateDateTimePicker.Margin = new System.Windows.Forms.Padding( 0 );
			this.oldDateDateTimePicker.Name = "oldDateDateTimePicker";
			this.oldDateDateTimePicker.Size = new System.Drawing.Size( 339, 24 );
			this.oldDateDateTimePicker.TabIndex = 29;
			// 
			// oldDriverPassportDataComboBox
			// 
			this.oldDriverPassportDataComboBox.DataSource = this.oldDriversBindingSource;
			this.oldDriverPassportDataComboBox.DisplayMember = "PassportData";
			this.oldDriverPassportDataComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldDriverPassportDataComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldDriverPassportDataComboBox.FormattingEnabled = true;
			this.oldDriverPassportDataComboBox.Location = new System.Drawing.Point( 10, 399 );
			this.oldDriverPassportDataComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.oldDriverPassportDataComboBox.Name = "oldDriverPassportDataComboBox";
			this.oldDriverPassportDataComboBox.Size = new System.Drawing.Size( 339, 25 );
			this.oldDriverPassportDataComboBox.TabIndex = 28;
			// 
			// oldDriverPassportDataLabel
			// 
			this.oldDriverPassportDataLabel.AutoSize = true;
			this.oldDriverPassportDataLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldDriverPassportDataLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldDriverPassportDataLabel.Location = new System.Drawing.Point( 15, 369 );
			this.oldDriverPassportDataLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.oldDriverPassportDataLabel.Name = "oldDriverPassportDataLabel";
			this.oldDriverPassportDataLabel.Size = new System.Drawing.Size( 329, 25 );
			this.oldDriverPassportDataLabel.TabIndex = 25;
			this.oldDriverPassportDataLabel.Text = "Прежние паспортные данные водителя автобуса";
			this.oldDriverPassportDataLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// oldBusCarCodeLabel
			// 
			this.oldBusCarCodeLabel.AutoSize = true;
			this.oldBusCarCodeLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldBusCarCodeLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldBusCarCodeLabel.Location = new System.Drawing.Point( 15, 310 );
			this.oldBusCarCodeLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.oldBusCarCodeLabel.Name = "oldBusCarCodeLabel";
			this.oldBusCarCodeLabel.Size = new System.Drawing.Size( 329, 25 );
			this.oldBusCarCodeLabel.TabIndex = 24;
			this.oldBusCarCodeLabel.Text = "Прежний автомобильный номер автобуса";
			this.oldBusCarCodeLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// oldTimeLabel
			// 
			this.oldTimeLabel.AutoSize = true;
			this.oldTimeLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldTimeLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldTimeLabel.Location = new System.Drawing.Point( 15, 251 );
			this.oldTimeLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.oldTimeLabel.Name = "oldTimeLabel";
			this.oldTimeLabel.Size = new System.Drawing.Size( 329, 25 );
			this.oldTimeLabel.TabIndex = 23;
			this.oldTimeLabel.Text = "Прежнее время";
			this.oldTimeLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// oldBusCarCodeComboBox
			// 
			this.oldBusCarCodeComboBox.DataSource = this.oldBusesBindingSource;
			this.oldBusCarCodeComboBox.DisplayMember = "CarCode";
			this.oldBusCarCodeComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldBusCarCodeComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldBusCarCodeComboBox.FormattingEnabled = true;
			this.oldBusCarCodeComboBox.Location = new System.Drawing.Point( 10, 340 );
			this.oldBusCarCodeComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.oldBusCarCodeComboBox.Name = "oldBusCarCodeComboBox";
			this.oldBusCarCodeComboBox.Size = new System.Drawing.Size( 339, 25 );
			this.oldBusCarCodeComboBox.TabIndex = 3;
			// 
			// oldBusCategoryComboBox
			// 
			this.oldBusCategoryComboBox.DataSource = this.oldBusesCategoriesBindingSource;
			this.oldBusCategoryComboBox.DisplayMember = "Name";
			this.oldBusCategoryComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldBusCategoryComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldBusCategoryComboBox.FormattingEnabled = true;
			this.oldBusCategoryComboBox.Location = new System.Drawing.Point( 10, 163 );
			this.oldBusCategoryComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.oldBusCategoryComboBox.Name = "oldBusCategoryComboBox";
			this.oldBusCategoryComboBox.Size = new System.Drawing.Size( 339, 25 );
			this.oldBusCategoryComboBox.TabIndex = 2;
			// 
			// oldPathComboBox
			// 
			this.oldPathComboBox.DataSource = this.oldPathsBindingSource;
			this.oldPathComboBox.DisplayMember = "Name";
			this.oldPathComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldPathComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldPathComboBox.FormattingEnabled = true;
			this.oldPathComboBox.Location = new System.Drawing.Point( 10, 104 );
			this.oldPathComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.oldPathComboBox.Name = "oldPathComboBox";
			this.oldPathComboBox.Size = new System.Drawing.Size( 339, 25 );
			this.oldPathComboBox.TabIndex = 0;
			// 
			// oldDateLabel
			// 
			this.oldDateLabel.AutoSize = true;
			this.oldDateLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldDateLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldDateLabel.Location = new System.Drawing.Point( 15, 15 );
			this.oldDateLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.oldDateLabel.Name = "oldDateLabel";
			this.oldDateLabel.Size = new System.Drawing.Size( 329, 25 );
			this.oldDateLabel.TabIndex = 22;
			this.oldDateLabel.Text = "Прежняя дата";
			this.oldDateLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// oldPathLabel
			// 
			this.oldPathLabel.AutoSize = true;
			this.oldPathLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldPathLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldPathLabel.Location = new System.Drawing.Point( 15, 74 );
			this.oldPathLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.oldPathLabel.Name = "oldPathLabel";
			this.oldPathLabel.Size = new System.Drawing.Size( 329, 25 );
			this.oldPathLabel.TabIndex = 22;
			this.oldPathLabel.Text = "Прежний маршрут";
			this.oldPathLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// oldBusCategoryLabel
			// 
			this.oldBusCategoryLabel.AutoSize = true;
			this.oldBusCategoryLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldBusCategoryLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldBusCategoryLabel.Location = new System.Drawing.Point( 15, 133 );
			this.oldBusCategoryLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.oldBusCategoryLabel.Name = "oldBusCategoryLabel";
			this.oldBusCategoryLabel.Size = new System.Drawing.Size( 329, 25 );
			this.oldBusCategoryLabel.TabIndex = 22;
			this.oldBusCategoryLabel.Text = "Прежняя категория автобуса";
			this.oldBusCategoryLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// oldWeekdayLabel
			// 
			this.oldWeekdayLabel.AutoSize = true;
			this.oldWeekdayLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.oldWeekdayLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.oldWeekdayLabel.Location = new System.Drawing.Point( 15, 192 );
			this.oldWeekdayLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.oldWeekdayLabel.Name = "oldWeekdayLabel";
			this.oldWeekdayLabel.Size = new System.Drawing.Size( 329, 25 );
			this.oldWeekdayLabel.TabIndex = 22;
			this.oldWeekdayLabel.Text = "Прежний день недели";
			this.oldWeekdayLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// EditRunExecutionForm
			// 
			this.ClientSize = new System.Drawing.Size( 749, 496 );
			this.Controls.Add( this.formTableLayoutPanel );
			this.Name = "EditRunExecutionForm";
			this.Text = "EditRunExecutionForm";
			this.Controls.SetChildIndex( this.formTableLayoutPanel, 0 );
			( ( System.ComponentModel.ISupportInitialize ) ( this.centralBusTerminalDataSet ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.errorProvider ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.oldPathsBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.pathsBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.oldBusesCategoriesBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.busesCategoriesBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.oldWeekdaysBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.weekdaysBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.oldBusesBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.busesBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.oldDriversBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.driversBindingSource ) ).EndInit( );
			this.formTableLayoutPanel.ResumeLayout( false );
			this.formTableLayoutPanel.PerformLayout( );
			this.ResumeLayout( false );

		} // InitializeComponent

		#endregion

		/// <summary>
		/// Панель выравнивания элементов формы
		/// </summary>
		protected System.Windows.Forms.TableLayoutPanel formTableLayoutPanel;

		/// <summary>
		/// Связующий источник прежних маршрутов
		/// </summary>
		protected System.Windows.Forms.BindingSource oldPathsBindingSource;
		/// <summary>
		/// Связующий источник маршрутов
		/// </summary>
		protected System.Windows.Forms.BindingSource pathsBindingSource;
		/// <summary>
		/// Связующий источник прежних категорий автобусов
		/// </summary>
		protected System.Windows.Forms.BindingSource
			oldBusesCategoriesBindingSource;
		/// <summary>
		/// Связующий источник категорий автобусов
		/// </summary>
		protected System.Windows.Forms.BindingSource busesCategoriesBindingSource;
		/// <summary>
		/// Связующий источник прежних дней недели
		/// </summary>
		protected System.Windows.Forms.BindingSource oldWeekdaysBindingSource;
		/// <summary>
		/// Связующий источник дней недели
		/// </summary>
		protected System.Windows.Forms.BindingSource weekdaysBindingSource;
		/// <summary>
		/// Связующий источник прежних автобусов
		/// </summary>
		protected System.Windows.Forms.BindingSource oldBusesBindingSource;
		/// <summary>
		/// Связующий источник автобусов
		/// </summary>
		protected System.Windows.Forms.BindingSource busesBindingSource;
		/// <summary>
		/// Связующий источник прежних водителей автобусов
		/// </summary>
		protected System.Windows.Forms.BindingSource oldDriversBindingSource;
		/// <summary>
		/// Связующий источник водителей автобусов
		/// </summary>
		protected System.Windows.Forms.BindingSource driversBindingSource;

		/// <summary>
		/// Метка прежней даты
		/// </summary>
		protected System.Windows.Forms.Label oldDateLabel;
		/// <summary>
		/// Сборщик прежней даты
		/// </summary>
		protected System.Windows.Forms.DateTimePicker oldDateDateTimePicker;
		/// <summary>
		/// Метка даты
		/// </summary>
		protected System.Windows.Forms.Label dateLabel;
		/// <summary>
		/// Сборщик даты
		/// </summary>
		protected System.Windows.Forms.DateTimePicker dateDateTimePicker;

		/// <summary>
		/// Метка прежнего маршрута
		/// </summary>
		protected System.Windows.Forms.Label oldPathLabel;
		/// <summary>
		/// Выпадающий список прежнего маршрута
		/// </summary>
		protected System.Windows.Forms.ComboBox oldPathComboBox;
		/// <summary>
		/// Метка маршрута
		/// </summary>
		protected System.Windows.Forms.Label pathLabel;
		/// <summary>
		/// Выпадающий список маршрута
		/// </summary>
		protected System.Windows.Forms.ComboBox pathComboBox;

		/// <summary>
		/// Метка прежней категории автобуса
		/// </summary>
		protected System.Windows.Forms.Label oldBusCategoryLabel;
		/// <summary>
		/// Выпадающий список прежней категории автобуса
		/// </summary>
		protected System.Windows.Forms.ComboBox oldBusCategoryComboBox;
		/// <summary>
		/// Метка категории автобуса
		/// </summary>
		protected System.Windows.Forms.Label busCategoryLabel;
		/// <summary>
		/// Выпадающий список категории автобуса
		/// </summary>
		protected System.Windows.Forms.ComboBox busCategoryComboBox;

		/// <summary>
		/// Метка прежнего дня недели
		/// </summary>
		protected System.Windows.Forms.Label oldWeekdayLabel;
		/// <summary>
		/// Выпадающий список прежнего дня недели
		/// </summary>
		protected System.Windows.Forms.ComboBox oldWeekdayComboBox;
		/// <summary>
		/// Метка дня недели
		/// </summary>
		protected System.Windows.Forms.Label weekdayLabel;
		/// <summary>
		/// Выпадающий список дня недели
		/// </summary>
		protected System.Windows.Forms.ComboBox weekdayComboBox;

		/// <summary>
		/// Метка прежнего времени
		/// </summary>
		protected System.Windows.Forms.Label oldTimeLabel;
		/// <summary>
		/// Сборщик прежнего времени
		/// </summary>
		protected System.Windows.Forms.DateTimePicker oldTimeDateTimePicker;
		/// <summary>
		/// Метка времени
		/// </summary>
		protected System.Windows.Forms.Label timeLabel;
		/// <summary>
		/// Сборщик времени
		/// </summary>
		protected System.Windows.Forms.DateTimePicker timeDateTimePicker;

		/// <summary>
		/// Метка прежнего автомобильного номера автобуса
		/// </summary>
		protected System.Windows.Forms.Label oldBusCarCodeLabel;
		/// <summary>
		/// Выпадающий список прежнего автомобильного номера автобуса
		/// </summary>
		protected System.Windows.Forms.ComboBox oldBusCarCodeComboBox;
		/// <summary>
		/// Метка автомобильного номера автобуса
		/// </summary>
		protected System.Windows.Forms.Label busCarCodeLabel;
		/// <summary>
		/// Выпадающий список автомобильного номера автобуса
		/// </summary>
		protected System.Windows.Forms.ComboBox busCarCodeComboBox;

		/// <summary>
		/// Метка прежних паспортных данных водителя автобуса
		/// </summary>
		protected System.Windows.Forms.Label oldDriverPassportDataLabel;
		/// <summary>
		/// Выпадающий список прежних паспортных данных водителя автобуса
		/// </summary>
		protected System.Windows.Forms.ComboBox oldDriverPassportDataComboBox;
		/// <summary>
		/// Метка паспортных данных водителя автобуса
		/// </summary>
		protected System.Windows.Forms.Label driverPassportDataLabel;
		/// <summary>
		/// Выпадающий список паспортных данных водителя автобуса
		/// </summary>
		protected System.Windows.Forms.ComboBox driverPassportDataComboBox;

	} // EditRunExecutionForm
} // CentralBusTerminalClient

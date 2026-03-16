namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма показа таблиц
	/// </summary>
	partial class StopsSearchForm
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
			System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle( );
			System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle( );
			System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle( );
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager( typeof( StopsSearchForm ) );
			this.centralBusTerminalDataSet = new CentralBusTerminalClient.CentralBusTerminalDataSet( );
			this.formTableLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.splitContainer = new System.Windows.Forms.SplitContainer( );
			this.foundStopsDataGridView = new System.Windows.Forms.DataGridView( );
			this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.pathDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.pathStopsQuantityDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.numberDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.distanceDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.timeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.busTicketCostDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.busSeatLuggageTransportCostDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.foundStopsBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.searchTableLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.buttonsLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.searchButton = new System.Windows.Forms.Button( );
			this.weekdayLabel = new System.Windows.Forms.Label( );
			this.weekdayComboBox = new System.Windows.Forms.ComboBox( );
			this.weekdaysBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.busCategoryComboBox = new System.Windows.Forms.ComboBox( );
			this.busesCategoriesBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.nameSubstringTextBox = new System.Windows.Forms.TextBox( );
			this.nameSubstringLabel = new System.Windows.Forms.Label( );
			this.busCategoryLabel = new System.Windows.Forms.Label( );
			this.errorProvider = new System.Windows.Forms.ErrorProvider( this.components );
			( ( System.ComponentModel.ISupportInitialize ) ( this.centralBusTerminalDataSet ) ).BeginInit( );
			this.formTableLayoutPanel.SuspendLayout( );
			this.splitContainer.Panel1.SuspendLayout( );
			this.splitContainer.Panel2.SuspendLayout( );
			this.splitContainer.SuspendLayout( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundStopsDataGridView ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundStopsBindingSource ) ).BeginInit( );
			this.searchTableLayoutPanel.SuspendLayout( );
			this.buttonsLayoutPanel.SuspendLayout( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.weekdaysBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.busesCategoriesBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.errorProvider ) ).BeginInit( );
			this.SuspendLayout( );
			// 
			// centralBusTerminalDataSet
			// 
			this.centralBusTerminalDataSet.DataSetName = "CentralBusTerminalDataSet";
			this.centralBusTerminalDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
			// 
			// formTableLayoutPanel
			// 
			this.formTableLayoutPanel.ColumnCount = 3;
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 25F ) );
			this.formTableLayoutPanel.Controls.Add( this.splitContainer, 1, 1 );
			this.formTableLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.formTableLayoutPanel.Location = new System.Drawing.Point( 0, 0 );
			this.formTableLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.formTableLayoutPanel.Name = "formTableLayoutPanel";
			this.formTableLayoutPanel.RowCount = 3;
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.Size = new System.Drawing.Size( 1038, 511 );
			this.formTableLayoutPanel.TabIndex = 22;
			// 
			// splitContainer
			// 
			this.splitContainer.Dock = System.Windows.Forms.DockStyle.Fill;
			this.splitContainer.Location = new System.Drawing.Point( 10, 10 );
			this.splitContainer.Margin = new System.Windows.Forms.Padding( 0 );
			this.splitContainer.Name = "splitContainer";
			// 
			// splitContainer.Panel1
			// 
			this.splitContainer.Panel1.Controls.Add( this.foundStopsDataGridView );
			// 
			// splitContainer.Panel2
			// 
			this.splitContainer.Panel2.Controls.Add( this.searchTableLayoutPanel );
			this.splitContainer.Size = new System.Drawing.Size( 1003, 491 );
			this.splitContainer.SplitterDistance = 689;
			this.splitContainer.SplitterWidth = 10;
			this.splitContainer.TabIndex = 0;
			// 
			// foundStopsDataGridView
			// 
			this.foundStopsDataGridView.AllowUserToOrderColumns = true;
			this.foundStopsDataGridView.AllowUserToResizeRows = false;
			dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle1.Font = new System.Drawing.Font( "Tahoma", 7.5F );
			this.foundStopsDataGridView.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
			this.foundStopsDataGridView.AutoGenerateColumns = false;
			this.foundStopsDataGridView.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.foundStopsDataGridView.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleVertical;
			this.foundStopsDataGridView.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
			dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
			dataGridViewCellStyle2.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
			dataGridViewCellStyle2.NullValue = null;
			dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
			dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
			dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
			this.foundStopsDataGridView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
			this.foundStopsDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.foundStopsDataGridView.Columns.AddRange( new System.Windows.Forms.DataGridViewColumn[ ] {
            this.nameDataGridViewTextBoxColumn,
            this.pathDataGridViewTextBoxColumn,
            this.pathStopsQuantityDataGridViewTextBoxColumn,
            this.numberDataGridViewTextBoxColumn,
            this.distanceDataGridViewTextBoxColumn,
            this.timeDataGridViewTextBoxColumn,
            this.busTicketCostDataGridViewTextBoxColumn,
            this.busSeatLuggageTransportCostDataGridViewTextBoxColumn} );
			this.foundStopsDataGridView.Cursor = System.Windows.Forms.Cursors.Default;
			this.foundStopsDataGridView.DataSource = this.foundStopsBindingSource;
			this.foundStopsDataGridView.Dock = System.Windows.Forms.DockStyle.Fill;
			this.foundStopsDataGridView.Location = new System.Drawing.Point( 0, 0 );
			this.foundStopsDataGridView.Margin = new System.Windows.Forms.Padding( 0 );
			this.foundStopsDataGridView.MultiSelect = false;
			this.foundStopsDataGridView.Name = "foundStopsDataGridView";
			this.foundStopsDataGridView.ReadOnly = true;
			this.foundStopsDataGridView.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
			this.foundStopsDataGridView.RowHeadersWidth = 20;
			this.foundStopsDataGridView.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
			dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle3.Font = new System.Drawing.Font( "Tahoma", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ( ( byte ) ( 204 ) ) );
			this.foundStopsDataGridView.RowsDefaultCellStyle = dataGridViewCellStyle3;
			this.foundStopsDataGridView.RowTemplate.Height = 24;
			this.foundStopsDataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
			this.foundStopsDataGridView.Size = new System.Drawing.Size( 689, 491 );
			this.foundStopsDataGridView.TabIndex = 12;
			// 
			// nameDataGridViewTextBoxColumn
			// 
			this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
			this.nameDataGridViewTextBoxColumn.HeaderText = "Название";
			this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
			this.nameDataGridViewTextBoxColumn.ReadOnly = true;
			this.nameDataGridViewTextBoxColumn.Width = 80;
			// 
			// pathDataGridViewTextBoxColumn
			// 
			this.pathDataGridViewTextBoxColumn.DataPropertyName = "Path";
			this.pathDataGridViewTextBoxColumn.HeaderText = "Маршрут";
			this.pathDataGridViewTextBoxColumn.Name = "pathDataGridViewTextBoxColumn";
			this.pathDataGridViewTextBoxColumn.ReadOnly = true;
			this.pathDataGridViewTextBoxColumn.Width = 80;
			// 
			// pathStopsQuantityDataGridViewTextBoxColumn
			// 
			this.pathStopsQuantityDataGridViewTextBoxColumn.DataPropertyName = "PathStopsQuantity";
			this.pathStopsQuantityDataGridViewTextBoxColumn.HeaderText = "Количество остановок маршрута";
			this.pathStopsQuantityDataGridViewTextBoxColumn.Name = "pathStopsQuantityDataGridViewTextBoxColumn";
			this.pathStopsQuantityDataGridViewTextBoxColumn.ReadOnly = true;
			this.pathStopsQuantityDataGridViewTextBoxColumn.Width = 80;
			// 
			// numberDataGridViewTextBoxColumn
			// 
			this.numberDataGridViewTextBoxColumn.DataPropertyName = "Number";
			this.numberDataGridViewTextBoxColumn.HeaderText = "Номер";
			this.numberDataGridViewTextBoxColumn.Name = "numberDataGridViewTextBoxColumn";
			this.numberDataGridViewTextBoxColumn.ReadOnly = true;
			this.numberDataGridViewTextBoxColumn.Width = 80;
			// 
			// distanceDataGridViewTextBoxColumn
			// 
			this.distanceDataGridViewTextBoxColumn.DataPropertyName = "Distance";
			this.distanceDataGridViewTextBoxColumn.HeaderText = "Расстояние";
			this.distanceDataGridViewTextBoxColumn.Name = "distanceDataGridViewTextBoxColumn";
			this.distanceDataGridViewTextBoxColumn.ReadOnly = true;
			this.distanceDataGridViewTextBoxColumn.Width = 80;
			// 
			// timeDataGridViewTextBoxColumn
			// 
			this.timeDataGridViewTextBoxColumn.DataPropertyName = "Time";
			this.timeDataGridViewTextBoxColumn.HeaderText = "Время";
			this.timeDataGridViewTextBoxColumn.Name = "timeDataGridViewTextBoxColumn";
			this.timeDataGridViewTextBoxColumn.ReadOnly = true;
			this.timeDataGridViewTextBoxColumn.Width = 80;
			// 
			// busTicketCostDataGridViewTextBoxColumn
			// 
			this.busTicketCostDataGridViewTextBoxColumn.DataPropertyName = "BusTicketCost";
			this.busTicketCostDataGridViewTextBoxColumn.HeaderText = "Цена билета на автобус";
			this.busTicketCostDataGridViewTextBoxColumn.Name = "busTicketCostDataGridViewTextBoxColumn";
			this.busTicketCostDataGridViewTextBoxColumn.ReadOnly = true;
			this.busTicketCostDataGridViewTextBoxColumn.Width = 80;
			// 
			// busSeatLuggageTransportCostDataGridViewTextBoxColumn
			// 
			this.busSeatLuggageTransportCostDataGridViewTextBoxColumn.DataPropertyName = "BusSeatLuggageTransportCost";
			this.busSeatLuggageTransportCostDataGridViewTextBoxColumn.HeaderText = "Стоимость провоза багажа в автобусе";
			this.busSeatLuggageTransportCostDataGridViewTextBoxColumn.Name = "busSeatLuggageTransportCostDataGridViewTextBoxColumn";
			this.busSeatLuggageTransportCostDataGridViewTextBoxColumn.ReadOnly = true;
			this.busSeatLuggageTransportCostDataGridViewTextBoxColumn.Width = 80;
			// 
			// foundStopsBindingSource
			// 
			this.foundStopsBindingSource.DataMember = "FoundStops";
			this.foundStopsBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// searchTableLayoutPanel
			// 
			this.searchTableLayoutPanel.ColumnCount = 1;
			this.searchTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.searchTableLayoutPanel.Controls.Add( this.buttonsLayoutPanel, 0, 6 );
			this.searchTableLayoutPanel.Controls.Add( this.weekdayLabel, 0, 4 );
			this.searchTableLayoutPanel.Controls.Add( this.weekdayComboBox, 0, 5 );
			this.searchTableLayoutPanel.Controls.Add( this.busCategoryComboBox, 0, 3 );
			this.searchTableLayoutPanel.Controls.Add( this.nameSubstringTextBox, 0, 1 );
			this.searchTableLayoutPanel.Controls.Add( this.nameSubstringLabel, 0, 0 );
			this.searchTableLayoutPanel.Controls.Add( this.busCategoryLabel, 0, 2 );
			this.searchTableLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.searchTableLayoutPanel.Location = new System.Drawing.Point( 0, 0 );
			this.searchTableLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.searchTableLayoutPanel.Name = "searchTableLayoutPanel";
			this.searchTableLayoutPanel.RowCount = 7;
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.searchTableLayoutPanel.Size = new System.Drawing.Size( 304, 491 );
			this.searchTableLayoutPanel.TabIndex = 24;
			// 
			// buttonsLayoutPanel
			// 
			this.buttonsLayoutPanel.ColumnCount = 3;
			this.buttonsLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 50F ) );
			this.buttonsLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 125F ) );
			this.buttonsLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 50F ) );
			this.buttonsLayoutPanel.Controls.Add( this.searchButton, 1, 1 );
			this.buttonsLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.buttonsLayoutPanel.Location = new System.Drawing.Point( 0, 177 );
			this.buttonsLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.buttonsLayoutPanel.Name = "buttonsLayoutPanel";
			this.buttonsLayoutPanel.RowCount = 2;
			this.buttonsLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.buttonsLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.buttonsLayoutPanel.Size = new System.Drawing.Size( 304, 314 );
			this.buttonsLayoutPanel.TabIndex = 29;
			// 
			// searchButton
			// 
			this.searchButton.Cursor = System.Windows.Forms.Cursors.Hand;
			this.searchButton.Dock = System.Windows.Forms.DockStyle.Left;
			this.searchButton.Font = new System.Drawing.Font( "Tahoma", 8.25F, System.Drawing.FontStyle.Bold );
			this.searchButton.Image = global::CentralBusTerminalClient.Properties.Resources.Find;
			this.searchButton.Location = new System.Drawing.Point( 89, 279 );
			this.searchButton.Margin = new System.Windows.Forms.Padding( 0 );
			this.searchButton.Name = "searchButton";
			this.searchButton.Size = new System.Drawing.Size( 125, 35 );
			this.searchButton.TabIndex = 5;
			this.searchButton.Text = "Найти";
			this.searchButton.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
			this.searchButton.UseVisualStyleBackColor = true;
			this.searchButton.Click += new System.EventHandler( this.OnSearchButtonClick );
			// 
			// weekdayLabel
			// 
			this.weekdayLabel.AutoSize = true;
			this.weekdayLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.weekdayLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.weekdayLabel.Location = new System.Drawing.Point( 5, 123 );
			this.weekdayLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.weekdayLabel.Name = "weekdayLabel";
			this.weekdayLabel.Size = new System.Drawing.Size( 294, 25 );
			this.weekdayLabel.TabIndex = 24;
			this.weekdayLabel.Text = "День недели";
			this.weekdayLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// weekdayComboBox
			// 
			this.weekdayComboBox.DataSource = this.weekdaysBindingSource;
			this.weekdayComboBox.DisplayMember = "Name";
			this.weekdayComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.weekdayComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.weekdayComboBox.FormattingEnabled = true;
			this.weekdayComboBox.Location = new System.Drawing.Point( 0, 153 );
			this.weekdayComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.weekdayComboBox.Name = "weekdayComboBox";
			this.weekdayComboBox.Size = new System.Drawing.Size( 304, 25 );
			this.weekdayComboBox.TabIndex = 3;
			// 
			// weekdaysBindingSource
			// 
			this.weekdaysBindingSource.DataMember = "Weekdays";
			this.weekdaysBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// busCategoryComboBox
			// 
			this.busCategoryComboBox.DataSource = this.busesCategoriesBindingSource;
			this.busCategoryComboBox.DisplayMember = "Name";
			this.busCategoryComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.busCategoryComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.busCategoryComboBox.FormattingEnabled = true;
			this.busCategoryComboBox.Location = new System.Drawing.Point( 0, 94 );
			this.busCategoryComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.busCategoryComboBox.Name = "busCategoryComboBox";
			this.busCategoryComboBox.Size = new System.Drawing.Size( 304, 25 );
			this.busCategoryComboBox.TabIndex = 2;
			// 
			// busesCategoriesBindingSource
			// 
			this.busesCategoriesBindingSource.DataMember = "BusesCategories";
			this.busesCategoriesBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// nameSubstringTextBox
			// 
			this.nameSubstringTextBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.nameSubstringTextBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.nameSubstringTextBox.Location = new System.Drawing.Point( 0, 35 );
			this.nameSubstringTextBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.nameSubstringTextBox.Name = "nameSubstringTextBox";
			this.nameSubstringTextBox.Size = new System.Drawing.Size( 304, 24 );
			this.nameSubstringTextBox.TabIndex = 1;
			this.nameSubstringTextBox.WordWrap = false;
			// 
			// nameSubstringLabel
			// 
			this.nameSubstringLabel.AutoSize = true;
			this.nameSubstringLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.nameSubstringLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.nameSubstringLabel.Location = new System.Drawing.Point( 5, 5 );
			this.nameSubstringLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.nameSubstringLabel.Name = "nameSubstringLabel";
			this.nameSubstringLabel.Size = new System.Drawing.Size( 294, 25 );
			this.nameSubstringLabel.TabIndex = 22;
			this.nameSubstringLabel.Text = "Подстарока названия";
			this.nameSubstringLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// busCategoryLabel
			// 
			this.busCategoryLabel.AutoSize = true;
			this.busCategoryLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.busCategoryLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.busCategoryLabel.Location = new System.Drawing.Point( 5, 64 );
			this.busCategoryLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.busCategoryLabel.Name = "busCategoryLabel";
			this.busCategoryLabel.Size = new System.Drawing.Size( 294, 25 );
			this.busCategoryLabel.TabIndex = 22;
			this.busCategoryLabel.Text = "Категория автобуса";
			this.busCategoryLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// errorProvider
			// 
			this.errorProvider.ContainerControl = this;
			this.errorProvider.Icon = ( ( System.Drawing.Icon ) ( resources.GetObject( "errorProvider.Icon" ) ) );
			// 
			// StopsSearchForm
			// 
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
			this.ClientSize = new System.Drawing.Size( 1038, 511 );
			this.Controls.Add( this.formTableLayoutPanel );
			this.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.Icon = ( ( System.Drawing.Icon ) ( resources.GetObject( "$this.Icon" ) ) );
			this.MinimumSize = new System.Drawing.Size( 900, 250 );
			this.Name = "StopsSearchForm";
			this.Opacity = 0.96;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Поиск остановок: автовокзал \"Центральный\"";
			this.FormClosing += new System.Windows.Forms.FormClosingEventHandler( this.OnStopsSearchFormFormClosing );
			this.Load += new System.EventHandler( this.OnStopsSearchFormLoad );
			( ( System.ComponentModel.ISupportInitialize ) ( this.centralBusTerminalDataSet ) ).EndInit( );
			this.formTableLayoutPanel.ResumeLayout( false );
			this.splitContainer.Panel1.ResumeLayout( false );
			this.splitContainer.Panel2.ResumeLayout( false );
			this.splitContainer.ResumeLayout( false );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundStopsDataGridView ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundStopsBindingSource ) ).EndInit( );
			this.searchTableLayoutPanel.ResumeLayout( false );
			this.searchTableLayoutPanel.PerformLayout( );
			this.buttonsLayoutPanel.ResumeLayout( false );
			( ( System.ComponentModel.ISupportInitialize ) ( this.weekdaysBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.busesCategoriesBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.errorProvider ) ).EndInit( );
			this.ResumeLayout( false );

		} // InitializeComponent

		#endregion

		protected System.Windows.Forms.TableLayoutPanel formTableLayoutPanel;

		protected CentralBusTerminalDataSet centralBusTerminalDataSet;
		protected System.Windows.Forms.BindingSource
			weekdaysBindingSource;
		protected System.Windows.Forms.BindingSource foundStopsBindingSource;
		protected System.Windows.Forms.BindingSource busesCategoriesBindingSource;
		protected System.Windows.Forms.ErrorProvider errorProvider;
		private System.Windows.Forms.SplitContainer splitContainer;
		protected System.Windows.Forms.DataGridView foundStopsDataGridView;
		protected System.Windows.Forms.TableLayoutPanel searchTableLayoutPanel;
		protected System.Windows.Forms.Label weekdayLabel;
		protected System.Windows.Forms.ComboBox weekdayComboBox;
		protected System.Windows.Forms.ComboBox busCategoryComboBox;
		protected System.Windows.Forms.TextBox nameSubstringTextBox;
		protected System.Windows.Forms.Label nameSubstringLabel;
		protected System.Windows.Forms.Label busCategoryLabel;
		protected System.Windows.Forms.TableLayoutPanel buttonsLayoutPanel;
		protected System.Windows.Forms.Button searchButton;
		private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn pathDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn pathStopsQuantityDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn numberDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn distanceDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn timeDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn busTicketCostDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn busSeatLuggageTransportCostDataGridViewTextBoxColumn;

	} // ShowTablesForm
} // CentralBusTerminalClient
namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма показа таблиц
	/// </summary>
	partial class PathStopsSearchForm
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager( typeof( PathStopsSearchForm ) );
			this.centralBusTerminalDataSet = new CentralBusTerminalClient.CentralBusTerminalDataSet( );
			this.formTableLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.formSplitContainer = new System.Windows.Forms.SplitContainer( );
			this.entitySplitContainer = new System.Windows.Forms.SplitContainer( );
			this.foundPathStopsDataGridView = new System.Windows.Forms.DataGridView( );
			this.numberDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.afterPreviousDistanceDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.distanceDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn( );
			this.foundPathStopsBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.searchTableLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.buttonsLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.searchButton = new System.Windows.Forms.Button( );
			this.pathComboBox = new System.Windows.Forms.ComboBox( );
			this.pathsBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.pathLabel = new System.Windows.Forms.Label( );
			this.mapPictureBox = new System.Windows.Forms.PictureBox( );
			this.foundPathMapsBindingSource = new System.Windows.Forms.BindingSource( this.components );
			this.errorProvider = new System.Windows.Forms.ErrorProvider( this.components );
			this.foundPathMapStopsCoordinatesBindingSource = new System.Windows.Forms.BindingSource( this.components );
			( ( System.ComponentModel.ISupportInitialize ) ( this.centralBusTerminalDataSet ) ).BeginInit( );
			this.formTableLayoutPanel.SuspendLayout( );
			this.formSplitContainer.Panel1.SuspendLayout( );
			this.formSplitContainer.Panel2.SuspendLayout( );
			this.formSplitContainer.SuspendLayout( );
			this.entitySplitContainer.Panel1.SuspendLayout( );
			this.entitySplitContainer.Panel2.SuspendLayout( );
			this.entitySplitContainer.SuspendLayout( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundPathStopsDataGridView ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundPathStopsBindingSource ) ).BeginInit( );
			this.searchTableLayoutPanel.SuspendLayout( );
			this.buttonsLayoutPanel.SuspendLayout( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.pathsBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.mapPictureBox ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundPathMapsBindingSource ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.errorProvider ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundPathMapStopsCoordinatesBindingSource ) ).BeginInit( );
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
			this.formTableLayoutPanel.Controls.Add( this.formSplitContainer, 1, 1 );
			this.formTableLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.formTableLayoutPanel.Location = new System.Drawing.Point( 0, 0 );
			this.formTableLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.formTableLayoutPanel.Name = "formTableLayoutPanel";
			this.formTableLayoutPanel.RowCount = 3;
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.formTableLayoutPanel.Size = new System.Drawing.Size( 1045, 633 );
			this.formTableLayoutPanel.TabIndex = 22;
			// 
			// formSplitContainer
			// 
			this.formSplitContainer.Dock = System.Windows.Forms.DockStyle.Fill;
			this.formSplitContainer.Location = new System.Drawing.Point( 10, 10 );
			this.formSplitContainer.Margin = new System.Windows.Forms.Padding( 0 );
			this.formSplitContainer.Name = "formSplitContainer";
			this.formSplitContainer.Orientation = System.Windows.Forms.Orientation.Horizontal;
			// 
			// formSplitContainer.Panel1
			// 
			this.formSplitContainer.Panel1.Controls.Add( this.entitySplitContainer );
			// 
			// formSplitContainer.Panel2
			// 
			this.formSplitContainer.Panel2.Controls.Add( this.mapPictureBox );
			this.formSplitContainer.Size = new System.Drawing.Size( 1010, 613 );
			this.formSplitContainer.SplitterDistance = 180;
			this.formSplitContainer.SplitterWidth = 10;
			this.formSplitContainer.TabIndex = 1;
			// 
			// entitySplitContainer
			// 
			this.entitySplitContainer.Dock = System.Windows.Forms.DockStyle.Fill;
			this.entitySplitContainer.Location = new System.Drawing.Point( 0, 0 );
			this.entitySplitContainer.Margin = new System.Windows.Forms.Padding( 0 );
			this.entitySplitContainer.Name = "entitySplitContainer";
			// 
			// entitySplitContainer.Panel1
			// 
			this.entitySplitContainer.Panel1.Controls.Add( this.foundPathStopsDataGridView );
			// 
			// entitySplitContainer.Panel2
			// 
			this.entitySplitContainer.Panel2.Controls.Add( this.searchTableLayoutPanel );
			this.entitySplitContainer.Size = new System.Drawing.Size( 1010, 180 );
			this.entitySplitContainer.SplitterDistance = 608;
			this.entitySplitContainer.SplitterWidth = 10;
			this.entitySplitContainer.TabIndex = 0;
			// 
			// foundPathStopsDataGridView
			// 
			this.foundPathStopsDataGridView.AllowUserToOrderColumns = true;
			this.foundPathStopsDataGridView.AllowUserToResizeRows = false;
			dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle1.Font = new System.Drawing.Font( "Tahoma", 7.5F );
			this.foundPathStopsDataGridView.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
			this.foundPathStopsDataGridView.AutoGenerateColumns = false;
			this.foundPathStopsDataGridView.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.foundPathStopsDataGridView.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleVertical;
			this.foundPathStopsDataGridView.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
			dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
			dataGridViewCellStyle2.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
			dataGridViewCellStyle2.NullValue = null;
			dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
			dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
			dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
			this.foundPathStopsDataGridView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
			this.foundPathStopsDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.foundPathStopsDataGridView.Columns.AddRange( new System.Windows.Forms.DataGridViewColumn[ ] {
            this.numberDataGridViewTextBoxColumn,
            this.nameDataGridViewTextBoxColumn,
            this.afterPreviousDistanceDataGridViewTextBoxColumn,
            this.distanceDataGridViewTextBoxColumn} );
			this.foundPathStopsDataGridView.Cursor = System.Windows.Forms.Cursors.Default;
			this.foundPathStopsDataGridView.DataSource = this.foundPathStopsBindingSource;
			this.foundPathStopsDataGridView.Dock = System.Windows.Forms.DockStyle.Fill;
			this.foundPathStopsDataGridView.Location = new System.Drawing.Point( 0, 0 );
			this.foundPathStopsDataGridView.Margin = new System.Windows.Forms.Padding( 0 );
			this.foundPathStopsDataGridView.MultiSelect = false;
			this.foundPathStopsDataGridView.Name = "foundPathStopsDataGridView";
			this.foundPathStopsDataGridView.ReadOnly = true;
			this.foundPathStopsDataGridView.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
			this.foundPathStopsDataGridView.RowHeadersWidth = 20;
			this.foundPathStopsDataGridView.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
			dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
			dataGridViewCellStyle3.Font = new System.Drawing.Font( "Tahoma", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ( ( byte ) ( 204 ) ) );
			this.foundPathStopsDataGridView.RowsDefaultCellStyle = dataGridViewCellStyle3;
			this.foundPathStopsDataGridView.RowTemplate.Height = 24;
			this.foundPathStopsDataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
			this.foundPathStopsDataGridView.Size = new System.Drawing.Size( 608, 180 );
			this.foundPathStopsDataGridView.TabIndex = 12;
			// 
			// numberDataGridViewTextBoxColumn
			// 
			this.numberDataGridViewTextBoxColumn.DataPropertyName = "Number";
			this.numberDataGridViewTextBoxColumn.HeaderText = "Номер";
			this.numberDataGridViewTextBoxColumn.Name = "numberDataGridViewTextBoxColumn";
			this.numberDataGridViewTextBoxColumn.ReadOnly = true;
			this.numberDataGridViewTextBoxColumn.Width = 140;
			// 
			// nameDataGridViewTextBoxColumn
			// 
			this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
			this.nameDataGridViewTextBoxColumn.HeaderText = "Название";
			this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
			this.nameDataGridViewTextBoxColumn.ReadOnly = true;
			this.nameDataGridViewTextBoxColumn.Width = 140;
			// 
			// afterPreviousDistanceDataGridViewTextBoxColumn
			// 
			this.afterPreviousDistanceDataGridViewTextBoxColumn.DataPropertyName = "AfterPreviousDistance";
			this.afterPreviousDistanceDataGridViewTextBoxColumn.HeaderText = "Расстояние до предыдущей";
			this.afterPreviousDistanceDataGridViewTextBoxColumn.Name = "afterPreviousDistanceDataGridViewTextBoxColumn";
			this.afterPreviousDistanceDataGridViewTextBoxColumn.ReadOnly = true;
			this.afterPreviousDistanceDataGridViewTextBoxColumn.Width = 140;
			// 
			// distanceDataGridViewTextBoxColumn
			// 
			this.distanceDataGridViewTextBoxColumn.DataPropertyName = "Distance";
			this.distanceDataGridViewTextBoxColumn.HeaderText = "Расстояние";
			this.distanceDataGridViewTextBoxColumn.Name = "distanceDataGridViewTextBoxColumn";
			this.distanceDataGridViewTextBoxColumn.ReadOnly = true;
			this.distanceDataGridViewTextBoxColumn.Width = 140;
			// 
			// foundPathStopsBindingSource
			// 
			this.foundPathStopsBindingSource.DataMember = "FoundPathStops";
			this.foundPathStopsBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// searchTableLayoutPanel
			// 
			this.searchTableLayoutPanel.ColumnCount = 1;
			this.searchTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.searchTableLayoutPanel.Controls.Add( this.buttonsLayoutPanel, 0, 2 );
			this.searchTableLayoutPanel.Controls.Add( this.pathComboBox, 0, 1 );
			this.searchTableLayoutPanel.Controls.Add( this.pathLabel, 0, 0 );
			this.searchTableLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.searchTableLayoutPanel.Location = new System.Drawing.Point( 0, 0 );
			this.searchTableLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.searchTableLayoutPanel.Name = "searchTableLayoutPanel";
			this.searchTableLayoutPanel.RowCount = 3;
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.searchTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 20F ) );
			this.searchTableLayoutPanel.Size = new System.Drawing.Size( 392, 180 );
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
			this.buttonsLayoutPanel.Location = new System.Drawing.Point( 0, 59 );
			this.buttonsLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.buttonsLayoutPanel.Name = "buttonsLayoutPanel";
			this.buttonsLayoutPanel.RowCount = 2;
			this.buttonsLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.buttonsLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.buttonsLayoutPanel.Size = new System.Drawing.Size( 392, 121 );
			this.buttonsLayoutPanel.TabIndex = 29;
			// 
			// searchButton
			// 
			this.searchButton.Cursor = System.Windows.Forms.Cursors.Hand;
			this.searchButton.Dock = System.Windows.Forms.DockStyle.Left;
			this.searchButton.Font = new System.Drawing.Font( "Tahoma", 8.25F, System.Drawing.FontStyle.Bold );
			this.searchButton.Image = global::CentralBusTerminalClient.Properties.Resources.Find;
			this.searchButton.Location = new System.Drawing.Point( 133, 86 );
			this.searchButton.Margin = new System.Windows.Forms.Padding( 0 );
			this.searchButton.Name = "searchButton";
			this.searchButton.Size = new System.Drawing.Size( 125, 35 );
			this.searchButton.TabIndex = 5;
			this.searchButton.Text = "Найти";
			this.searchButton.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
			this.searchButton.UseVisualStyleBackColor = true;
			this.searchButton.Click += new System.EventHandler( this.OnSearchButtonClick );
			// 
			// pathComboBox
			// 
			this.pathComboBox.DataSource = this.pathsBindingSource;
			this.pathComboBox.DisplayMember = "Name";
			this.pathComboBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.pathComboBox.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.pathComboBox.FormattingEnabled = true;
			this.pathComboBox.Location = new System.Drawing.Point( 0, 35 );
			this.pathComboBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.pathComboBox.Name = "pathComboBox";
			this.pathComboBox.Size = new System.Drawing.Size( 392, 25 );
			this.pathComboBox.TabIndex = 2;
			// 
			// pathsBindingSource
			// 
			this.pathsBindingSource.DataMember = "Paths";
			this.pathsBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// pathLabel
			// 
			this.pathLabel.AutoSize = true;
			this.pathLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.pathLabel.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.pathLabel.Location = new System.Drawing.Point( 5, 5 );
			this.pathLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.pathLabel.Name = "pathLabel";
			this.pathLabel.Size = new System.Drawing.Size( 382, 25 );
			this.pathLabel.TabIndex = 22;
			this.pathLabel.Text = "Маршрут";
			this.pathLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// mapPictureBox
			// 
			this.mapPictureBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.mapPictureBox.Location = new System.Drawing.Point( 0, 0 );
			this.mapPictureBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.mapPictureBox.Name = "mapPictureBox";
			this.mapPictureBox.Size = new System.Drawing.Size( 1010, 423 );
			this.mapPictureBox.TabIndex = 0;
			this.mapPictureBox.TabStop = false;
			this.mapPictureBox.Paint += new System.Windows.Forms.PaintEventHandler( this.OnMapPictureBoxPaint );
			// 
			// foundPathMapsBindingSource
			// 
			this.foundPathMapsBindingSource.DataMember = "FoundPathMaps";
			this.foundPathMapsBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// errorProvider
			// 
			this.errorProvider.ContainerControl = this;
			this.errorProvider.Icon = ( ( System.Drawing.Icon ) ( resources.GetObject( "errorProvider.Icon" ) ) );
			// 
			// foundPathMapStopsCoordinatesBindingSource
			// 
			this.foundPathMapStopsCoordinatesBindingSource.DataMember = "FoundPathMapStopsCoordinates";
			this.foundPathMapStopsCoordinatesBindingSource.DataSource = this.centralBusTerminalDataSet;
			// 
			// PathStopsSearchForm
			// 
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
			this.ClientSize = new System.Drawing.Size( 1045, 633 );
			this.Controls.Add( this.formTableLayoutPanel );
			this.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.Icon = ( ( System.Drawing.Icon ) ( resources.GetObject( "$this.Icon" ) ) );
			this.MinimumSize = new System.Drawing.Size( 900, 250 );
			this.Name = "PathStopsSearchForm";
			this.Opacity = 0.96;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Поиск остановок маршрута: автовокзал \"Центральный\"";
			this.FormClosing += new System.Windows.Forms.FormClosingEventHandler( this.OnPathStopsSearchFormFormClosing );
			this.Load += new System.EventHandler( this.OnPathStopsSearchFormLoad );
			( ( System.ComponentModel.ISupportInitialize ) ( this.centralBusTerminalDataSet ) ).EndInit( );
			this.formTableLayoutPanel.ResumeLayout( false );
			this.formSplitContainer.Panel1.ResumeLayout( false );
			this.formSplitContainer.Panel2.ResumeLayout( false );
			this.formSplitContainer.ResumeLayout( false );
			this.entitySplitContainer.Panel1.ResumeLayout( false );
			this.entitySplitContainer.Panel2.ResumeLayout( false );
			this.entitySplitContainer.ResumeLayout( false );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundPathStopsDataGridView ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundPathStopsBindingSource ) ).EndInit( );
			this.searchTableLayoutPanel.ResumeLayout( false );
			this.searchTableLayoutPanel.PerformLayout( );
			this.buttonsLayoutPanel.ResumeLayout( false );
			( ( System.ComponentModel.ISupportInitialize ) ( this.pathsBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.mapPictureBox ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundPathMapsBindingSource ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.errorProvider ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.foundPathMapStopsCoordinatesBindingSource ) ).EndInit( );
			this.ResumeLayout( false );

		} // InitializeComponent

		#endregion

		protected System.Windows.Forms.TableLayoutPanel formTableLayoutPanel;

		protected CentralBusTerminalDataSet centralBusTerminalDataSet;
		protected System.Windows.Forms.BindingSource
			foundPathMapsBindingSource;
		protected System.Windows.Forms.BindingSource foundPathStopsBindingSource;
		protected System.Windows.Forms.BindingSource pathsBindingSource;
		protected System.Windows.Forms.ErrorProvider errorProvider;
		private System.Windows.Forms.SplitContainer entitySplitContainer;
		protected System.Windows.Forms.DataGridView foundPathStopsDataGridView;
		protected System.Windows.Forms.TableLayoutPanel searchTableLayoutPanel;
		protected System.Windows.Forms.ComboBox pathComboBox;
		protected System.Windows.Forms.Label pathLabel;
		protected System.Windows.Forms.TableLayoutPanel buttonsLayoutPanel;
		protected System.Windows.Forms.Button searchButton;
		protected System.Windows.Forms.BindingSource foundPathMapStopsCoordinatesBindingSource;
		protected System.Windows.Forms.SplitContainer formSplitContainer;
		private System.Windows.Forms.PictureBox mapPictureBox;
		private System.Windows.Forms.DataGridViewTextBoxColumn numberDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn afterPreviousDistanceDataGridViewTextBoxColumn;
		private System.Windows.Forms.DataGridViewTextBoxColumn distanceDataGridViewTextBoxColumn;

	} // ShowTablesForm
} // CentralBusTerminalClient
namespace DATABASING
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label commonFieldLabel;
            System.Windows.Forms.Label commandLabel;
            System.Windows.Forms.Label resultLabel;
            System.Windows.Forms.Label resultLabel1;
            System.Windows.Forms.Label resultLabel3;
            System.Windows.Forms.Label commandLabel1;
            System.Windows.Forms.Label label1;
            System.Windows.Forms.Label label2;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.vRDataSet = new DATABASING.VRDataSet();
            this.customCommandsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.customCommandsTableAdapter = new DATABASING.VRDataSetTableAdapters.CustomCommandsTableAdapter();
            this.tableAdapterManager = new DATABASING.VRDataSetTableAdapters.TableAdapterManager();
            this.customCommandsBindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorAddNewItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorDeleteItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.customCommandsBindingNavigatorSaveItem = new System.Windows.Forms.ToolStripButton();
            this.commonFieldTextBox = new System.Windows.Forms.TextBox();
            this.commandTextBox = new System.Windows.Forms.TextBox();
            this.resultTextBox = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.commandDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.resultDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CommonField = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.resultLabel2 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.txtProfileName = new System.Windows.Forms.TextBox();
            this.resultTextBox1 = new System.Windows.Forms.TextBox();
            this.bindingNavigator1 = new System.Windows.Forms.BindingNavigator(this.components);
            this.toolStripLabel2 = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripLabel1 = new System.Windows.Forms.ToolStripLabel();
            this.toolStripTextBox1 = new System.Windows.Forms.ToolStripTextBox();
            this.toolStripButton1 = new System.Windows.Forms.ToolStripButton();
            this.btnSave = new System.Windows.Forms.Button();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.btnOpen = new System.Windows.Forms.Button();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.button2 = new System.Windows.Forms.Button();
            this.btnToListbox = new System.Windows.Forms.Button();
            this.listBox2 = new System.Windows.Forms.ListBox();
            this.listBox3 = new System.Windows.Forms.ListBox();
            commonFieldLabel = new System.Windows.Forms.Label();
            commandLabel = new System.Windows.Forms.Label();
            resultLabel = new System.Windows.Forms.Label();
            resultLabel1 = new System.Windows.Forms.Label();
            resultLabel3 = new System.Windows.Forms.Label();
            commandLabel1 = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.vRDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customCommandsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customCommandsBindingNavigator)).BeginInit();
            this.customCommandsBindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator1)).BeginInit();
            this.bindingNavigator1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // commonFieldLabel
            // 
            commonFieldLabel.AutoSize = true;
            commonFieldLabel.Font = new System.Drawing.Font("Arial", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            commonFieldLabel.Location = new System.Drawing.Point(16, 80);
            commonFieldLabel.Name = "commonFieldLabel";
            commonFieldLabel.Size = new System.Drawing.Size(145, 17);
            commonFieldLabel.TabIndex = 3;
            commonFieldLabel.Text = "What the PC Speaks";
            // 
            // commandLabel
            // 
            commandLabel.AutoSize = true;
            commandLabel.Font = new System.Drawing.Font("Arial", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            commandLabel.Location = new System.Drawing.Point(16, 28);
            commandLabel.Name = "commandLabel";
            commandLabel.Size = new System.Drawing.Size(167, 17);
            commandLabel.TabIndex = 5;
            commandLabel.Text = "Your Spoken Command:";
            // 
            // resultLabel
            // 
            resultLabel.AutoSize = true;
            resultLabel.Font = new System.Drawing.Font("Arial", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            resultLabel.Location = new System.Drawing.Point(16, 54);
            resultLabel.Name = "resultLabel";
            resultLabel.Size = new System.Drawing.Size(137, 17);
            resultLabel.TabIndex = 7;
            resultLabel.Text = "Program to Launch:";
            // 
            // resultLabel1
            // 
            resultLabel1.AutoSize = true;
            resultLabel1.Location = new System.Drawing.Point(1008, 0);
            resultLabel1.Name = "resultLabel1";
            resultLabel1.Size = new System.Drawing.Size(40, 13);
            resultLabel1.TabIndex = 13;
            resultLabel1.Text = "Result:";
            resultLabel1.Visible = false;
            // 
            // resultLabel3
            // 
            resultLabel3.AutoSize = true;
            resultLabel3.Location = new System.Drawing.Point(1054, 51);
            resultLabel3.Name = "resultLabel3";
            resultLabel3.Size = new System.Drawing.Size(127, 13);
            resultLabel3.TabIndex = 17;
            resultLabel3.Text = "Enter Program Command:";
            resultLabel3.Visible = false;
            // 
            // commandLabel1
            // 
            commandLabel1.AutoSize = true;
            commandLabel1.Location = new System.Drawing.Point(697, 132);
            commandLabel1.Name = "commandLabel1";
            commandLabel1.Size = new System.Drawing.Size(109, 13);
            commandLabel1.TabIndex = 19;
            commandLabel1.Text = "Your Spoken Words: ";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(827, 132);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(100, 13);
            label1.TabIndex = 25;
            label1.Text = "Program to Launch:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(961, 132);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(107, 13);
            label2.TabIndex = 26;
            label2.Text = "What the PC Speaks";
            // 
            // vRDataSet
            // 
            this.vRDataSet.DataSetName = "VRDataSet";
            this.vRDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // customCommandsBindingSource
            // 
            this.customCommandsBindingSource.DataMember = "CustomCommands";
            this.customCommandsBindingSource.DataSource = this.vRDataSet;
            // 
            // customCommandsTableAdapter
            // 
            this.customCommandsTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            //this.tableAdapterManager.CustomCommandsTableAdapter = this.customCommandsTableAdapter;
           // this.tableAdapterManager.HomeAutomationCommandTableAdapter = null;
            //this.tableAdapterManager.HomeAutomationDataTableAdapter = null;
            //this.tableAdapterManager.TwitterCommandsTableAdapter = null;
            //this.tableAdapterManager.TwitterDataTableAdapter = null;
            this.tableAdapterManager.UpdateOrder = DATABASING.VRDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            this.tableAdapterManager.WebsiteCommandsTableAdapter = null;
            this.tableAdapterManager.WebsiteDataTableAdapter = null;
            // 
            // customCommandsBindingNavigator
            // 
            this.customCommandsBindingNavigator.AddNewItem = this.bindingNavigatorAddNewItem;
            this.customCommandsBindingNavigator.BindingSource = this.customCommandsBindingSource;
            this.customCommandsBindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.customCommandsBindingNavigator.DeleteItem = this.bindingNavigatorDeleteItem;
            this.customCommandsBindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2,
            this.bindingNavigatorAddNewItem,
            this.bindingNavigatorDeleteItem,
            this.customCommandsBindingNavigatorSaveItem});
            this.customCommandsBindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.customCommandsBindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.customCommandsBindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.customCommandsBindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.customCommandsBindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.customCommandsBindingNavigator.Name = "customCommandsBindingNavigator";
            this.customCommandsBindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.customCommandsBindingNavigator.Size = new System.Drawing.Size(678, 25);
            this.customCommandsBindingNavigator.TabIndex = 0;
            this.customCommandsBindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorAddNewItem
            // 
            this.bindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorAddNewItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorAddNewItem.Image")));
            this.bindingNavigatorAddNewItem.Name = "bindingNavigatorAddNewItem";
            this.bindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorAddNewItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorAddNewItem.Text = "Add new";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of items";
            // 
            // bindingNavigatorDeleteItem
            // 
            this.bindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorDeleteItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorDeleteItem.Image")));
            this.bindingNavigatorDeleteItem.Name = "bindingNavigatorDeleteItem";
            this.bindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorDeleteItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorDeleteItem.Text = "Delete";
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem.Image")));
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveFirstItem.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 23);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator1";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            //this.bindingNavigatorMoveNextItem.Click += new System.EventHandler(this.bindingNavigatorMoveNextItem_Click);
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator2";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // customCommandsBindingNavigatorSaveItem
            // 
            this.customCommandsBindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.customCommandsBindingNavigatorSaveItem.Image = ((System.Drawing.Image)(resources.GetObject("customCommandsBindingNavigatorSaveItem.Image")));
            this.customCommandsBindingNavigatorSaveItem.Name = "customCommandsBindingNavigatorSaveItem";
            this.customCommandsBindingNavigatorSaveItem.Size = new System.Drawing.Size(23, 22);
            this.customCommandsBindingNavigatorSaveItem.Text = "Save Data";
            this.customCommandsBindingNavigatorSaveItem.Click += new System.EventHandler(this.customCommandsBindingNavigatorSaveItem_Click);
            // 
            // commonFieldTextBox
            // 
            this.commonFieldTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.customCommandsBindingSource, "CommonField", true));
            this.commonFieldTextBox.Font = new System.Drawing.Font("Arial", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.commonFieldTextBox.Location = new System.Drawing.Point(189, 80);
            this.commonFieldTextBox.Name = "commonFieldTextBox";
            this.commonFieldTextBox.Size = new System.Drawing.Size(294, 25);
            this.commonFieldTextBox.TabIndex = 3;
            //this.commonFieldTextBox.TextChanged += new System.EventHandler(this.commonFieldTextBox_TextChanged);
            // 
            // commandTextBox
            // 
            this.commandTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.customCommandsBindingSource, "Command", true));
            this.commandTextBox.Font = new System.Drawing.Font("Arial", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.commandTextBox.Location = new System.Drawing.Point(189, 28);
            this.commandTextBox.Name = "commandTextBox";
            this.commandTextBox.Size = new System.Drawing.Size(294, 25);
            this.commandTextBox.TabIndex = 1;
            //this.commandTextBox.TextChanged += new System.EventHandler(this.commandTextBox_TextChanged);
            this.commandTextBox.Leave += new System.EventHandler(this.commandTextBox_Leave);
            // 
            // resultTextBox
            // 
            this.resultTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.customCommandsBindingSource, "Result", true));
            this.resultTextBox.Font = new System.Drawing.Font("Arial", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.resultTextBox.Location = new System.Drawing.Point(189, 54);
            this.resultTextBox.Name = "resultTextBox";
            this.resultTextBox.Size = new System.Drawing.Size(294, 25);
            this.resultTextBox.TabIndex = 2;
            //this.resultTextBox.TextChanged += new System.EventHandler(this.resultTextBox_TextChanged);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.commandDataGridViewTextBoxColumn,
            this.resultDataGridViewTextBoxColumn,
            this.CommonField});
            this.dataGridView1.DataSource = this.customCommandsBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(0, 166);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersVisible = false;
            this.dataGridView1.Size = new System.Drawing.Size(679, 215);
            this.dataGridView1.TabIndex = 9;
            this.dataGridView1.TabStop = false;
            // 
            // commandDataGridViewTextBoxColumn
            // 
            this.commandDataGridViewTextBoxColumn.DataPropertyName = "Command";
            this.commandDataGridViewTextBoxColumn.HeaderText = "Your Spoken Command";
            this.commandDataGridViewTextBoxColumn.Name = "commandDataGridViewTextBoxColumn";
            this.commandDataGridViewTextBoxColumn.Width = 200;
            // 
            // resultDataGridViewTextBoxColumn
            // 
            this.resultDataGridViewTextBoxColumn.DataPropertyName = "Result";
            this.resultDataGridViewTextBoxColumn.HeaderText = "Program to Launch";
            this.resultDataGridViewTextBoxColumn.Name = "resultDataGridViewTextBoxColumn";
            this.resultDataGridViewTextBoxColumn.Width = 250;
            // 
            // CommonField
            // 
            this.CommonField.DataPropertyName = "CommonField";
            this.CommonField.HeaderText = "What the PC Speaks";
            this.CommonField.Name = "CommonField";
            this.CommonField.Width = 200;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(903, -1);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 10;
            this.textBox1.TabStop = false;
            this.textBox1.Visible = false;
            // 
            // textBox2
            // 
            this.textBox2.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.vRDataSet, "CustomCommands.Result", true));
            this.textBox2.DataBindings.Add(new System.Windows.Forms.Binding("Tag", this.vRDataSet, "CustomCommands.Result", true));
            this.textBox2.Location = new System.Drawing.Point(903, 22);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(100, 20);
            this.textBox2.TabIndex = 11;
            this.textBox2.TabStop = false;
            this.textBox2.Visible = false;
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(1020, 28);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(28, 20);
            this.textBox3.TabIndex = 12;
            this.textBox3.TabStop = false;
            this.textBox3.Visible = false;
            this.textBox3.TextChanged += new System.EventHandler(this.textBox3_TextChanged_1);
            // 
            // resultLabel2
            // 
            this.resultLabel2.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.customCommandsBindingSource, "Result", true));
            this.resultLabel2.Location = new System.Drawing.Point(1057, 0);
            this.resultLabel2.Name = "resultLabel2";
            this.resultLabel2.Size = new System.Drawing.Size(100, 23);
            this.resultLabel2.TabIndex = 14;
            this.resultLabel2.Text = "label1";
            this.resultLabel2.Visible = false;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(565, 0);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(115, 23);
            this.button1.TabIndex = 15;
            this.button1.TabStop = false;
            this.button1.Text = "Close this window";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtProfileName
            // 
            this.txtProfileName.Location = new System.Drawing.Point(1047, 68);
            this.txtProfileName.Name = "txtProfileName";
            this.txtProfileName.Size = new System.Drawing.Size(131, 20);
            this.txtProfileName.TabIndex = 16;
            this.txtProfileName.Visible = false;
            // 
            // resultTextBox1
            // 
            this.resultTextBox1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.customCommandsBindingSource, "Result", true));
            this.resultTextBox1.Location = new System.Drawing.Point(1057, 22);
            this.resultTextBox1.Name = "resultTextBox1";
            this.resultTextBox1.Size = new System.Drawing.Size(100, 20);
            this.resultTextBox1.TabIndex = 18;
            this.resultTextBox1.Visible = false;
            //this.resultTextBox1.TextChanged += new System.EventHandler(this.resultTextBox1_TextChanged_1);
            // 
            // bindingNavigator1
            // 
            this.bindingNavigator1.AddNewItem = null;
            this.bindingNavigator1.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.bindingNavigator1.CountItem = null;
            this.bindingNavigator1.DeleteItem = null;
            this.bindingNavigator1.Dock = System.Windows.Forms.DockStyle.None;
            this.bindingNavigator1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripLabel2,
            this.bindingNavigatorSeparator3,
            this.toolStripLabel1,
            this.toolStripTextBox1,
            this.toolStripButton1});
            this.bindingNavigator1.Location = new System.Drawing.Point(19, 138);
            this.bindingNavigator1.MoveFirstItem = null;
            this.bindingNavigator1.MoveLastItem = null;
            this.bindingNavigator1.MoveNextItem = null;
            this.bindingNavigator1.MovePreviousItem = null;
            this.bindingNavigator1.Name = "bindingNavigator1";
            this.bindingNavigator1.PositionItem = null;
            this.bindingNavigator1.Size = new System.Drawing.Size(631, 25);
            this.bindingNavigator1.TabIndex = 19;
            this.bindingNavigator1.Text = "bindingNavigator1";
            // 
            // toolStripLabel2
            // 
            this.toolStripLabel2.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStripLabel2.Name = "toolStripLabel2";
            this.toolStripLabel2.Size = new System.Drawing.Size(187, 22);
            this.toolStripLabel2.Text = "Search your entries to Edit them";
            // 
            // bindingNavigatorSeparator3
            // 
            this.bindingNavigatorSeparator3.Name = "bindingNavigatorSeparator3";
            this.bindingNavigatorSeparator3.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripLabel1
            // 
            this.toolStripLabel1.Name = "toolStripLabel1";
            this.toolStripLabel1.Size = new System.Drawing.Size(161, 22);
            this.toolStripLabel1.Text = "Search Your Commands For: ";
            // 
            // toolStripTextBox1
            // 
            this.toolStripTextBox1.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.toolStripTextBox1.Name = "toolStripTextBox1";
            this.toolStripTextBox1.Size = new System.Drawing.Size(200, 25);
            // 
            // toolStripButton1
            // 
            this.toolStripButton1.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.toolStripButton1.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton1.Image")));
            this.toolStripButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton1.Name = "toolStripButton1";
            this.toolStripButton1.Size = new System.Drawing.Size(63, 22);
            this.toolStripButton1.Text = "Find it!";
            this.toolStripButton1.Click += new System.EventHandler(this.toolStripButton1_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(189, 112);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(75, 23);
            this.btnSave.TabIndex = 4;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // listBox1
            // 
            this.listBox1.FormattingEnabled = true;
            this.listBox1.Location = new System.Drawing.Point(700, 148);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(128, 212);
            this.listBox1.TabIndex = 20;
            //this.listBox1.SelectedIndexChanged += new System.EventHandler(this.listBox1_SelectedIndexChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.radioButton2);
            this.groupBox1.Controls.Add(this.radioButton1);
            this.groupBox1.Location = new System.Drawing.Point(489, 70);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(147, 35);
            this.groupBox1.TabIndex = 21;
            this.groupBox1.TabStop = false;
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Location = new System.Drawing.Point(76, 14);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(64, 17);
            this.radioButton2.TabIndex = 1;
            this.radioButton2.TabStop = true;
            this.radioButton2.Text = "Program";
            this.radioButton2.UseVisualStyleBackColor = true;
            this.radioButton2.CheckedChanged += new System.EventHandler(this.radioButton2_CheckedChanged);
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Location = new System.Drawing.Point(6, 14);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(64, 17);
            this.radioButton1.TabIndex = 0;
            this.radioButton1.TabStop = true;
            this.radioButton1.Text = "Website";
            this.radioButton1.UseVisualStyleBackColor = true;
            this.radioButton1.CheckedChanged += new System.EventHandler(this.radioButton1_CheckedChanged);
            // 
            // btnOpen
            // 
            this.btnOpen.Location = new System.Drawing.Point(408, 112);
            this.btnOpen.Name = "btnOpen";
            this.btnOpen.Size = new System.Drawing.Size(75, 23);
            this.btnOpen.TabIndex = 22;
            this.btnOpen.Text = "Open";
            this.btnOpen.UseVisualStyleBackColor = true;
            this.btnOpen.Visible = false;
            this.btnOpen.Click += new System.EventHandler(this.btnOpen_Click);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "Select Program";
            this.openFileDialog1.InitialDirectory = "D:\\";
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.button2.Location = new System.Drawing.Point(510, 28);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(170, 23);
            this.button2.TabIndex = 23;
            this.button2.TabStop = false;
            this.button2.Text = "Open Search Box";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Visible = false;
            //this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // btnToListbox
            // 
            this.btnToListbox.Location = new System.Drawing.Point(510, 111);
            this.btnToListbox.Name = "btnToListbox";
            this.btnToListbox.Size = new System.Drawing.Size(75, 23);
            this.btnToListbox.TabIndex = 24;
            this.btnToListbox.Text = "to listbox";
            this.btnToListbox.UseVisualStyleBackColor = true;
            this.btnToListbox.Visible = false;
            this.btnToListbox.Click += new System.EventHandler(this.btnToListbox_Click);
            // 
            // listBox2
            // 
            this.listBox2.FormattingEnabled = true;
            this.listBox2.Location = new System.Drawing.Point(830, 148);
            this.listBox2.Name = "listBox2";
            this.listBox2.Size = new System.Drawing.Size(128, 212);
            this.listBox2.TabIndex = 27;
            // 
            // listBox3
            // 
            this.listBox3.FormattingEnabled = true;
            this.listBox3.Location = new System.Drawing.Point(961, 148);
            this.listBox3.Name = "listBox3";
            this.listBox3.Size = new System.Drawing.Size(128, 212);
            this.listBox3.TabIndex = 28;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(678, 380);
            this.Controls.Add(this.listBox3);
            this.Controls.Add(this.listBox2);
            this.Controls.Add(label2);
            this.Controls.Add(label1);
            this.Controls.Add(this.btnToListbox);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.btnOpen);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.listBox1);
            this.Controls.Add(commandLabel1);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.bindingNavigator1);
            this.Controls.Add(resultLabel3);
            this.Controls.Add(this.resultTextBox1);
            this.Controls.Add(this.txtProfileName);
            this.Controls.Add(this.button1);
            this.Controls.Add(resultLabel1);
            this.Controls.Add(this.resultLabel2);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(commonFieldLabel);
            this.Controls.Add(this.commonFieldTextBox);
            this.Controls.Add(commandLabel);
            this.Controls.Add(this.commandTextBox);
            this.Controls.Add(resultLabel);
            this.Controls.Add(this.resultTextBox);
            this.Controls.Add(this.customCommandsBindingNavigator);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "DataBase";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.vRDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customCommandsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customCommandsBindingNavigator)).EndInit();
            this.customCommandsBindingNavigator.ResumeLayout(false);
            this.customCommandsBindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigator1)).EndInit();
            this.bindingNavigator1.ResumeLayout(false);
            this.bindingNavigator1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private VRDataSet vRDataSet;
        private System.Windows.Forms.BindingSource customCommandsBindingSource;
        private VRDataSetTableAdapters.CustomCommandsTableAdapter customCommandsTableAdapter;
        private VRDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.BindingNavigator customCommandsBindingNavigator;
        private System.Windows.Forms.ToolStripButton bindingNavigatorAddNewItem;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorDeleteItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.ToolStripButton customCommandsBindingNavigatorSaveItem;
        private System.Windows.Forms.TextBox commonFieldTextBox;
        private System.Windows.Forms.TextBox commandTextBox;
        private System.Windows.Forms.TextBox resultTextBox;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Label resultLabel2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox txtProfileName;
        private System.Windows.Forms.TextBox resultTextBox1;
        private System.Windows.Forms.DataGridViewTextBoxColumn commandDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn resultDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn CommonField;
        private System.Windows.Forms.BindingNavigator bindingNavigator1;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator3;
        private System.Windows.Forms.ToolStripLabel toolStripLabel1;
        private System.Windows.Forms.ToolStripTextBox toolStripTextBox1;
        private System.Windows.Forms.ToolStripButton toolStripButton1;
        private System.Windows.Forms.ToolStripLabel toolStripLabel2;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.Button btnOpen;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button btnToListbox;
        private System.Windows.Forms.ListBox listBox2;
        private System.Windows.Forms.ListBox listBox3;
    }
}


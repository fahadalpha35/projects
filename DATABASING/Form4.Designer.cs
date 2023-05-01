namespace DATABASING
{
    partial class Form4
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
            System.Windows.Forms.Label iDLabel;
            System.Windows.Forms.Label commonFieldLabel;
            System.Windows.Forms.Label commandLabel;
            System.Windows.Forms.Label resultLabel;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form4));
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
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
            this.iDTextBox = new System.Windows.Forms.TextBox();
            this.commonFieldTextBox = new System.Windows.Forms.TextBox();
            this.commandTextBox = new System.Windows.Forms.TextBox();
            this.resultTextBox = new System.Windows.Forms.TextBox();
            this.customCommandsDataGridView = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            iDLabel = new System.Windows.Forms.Label();
            commonFieldLabel = new System.Windows.Forms.Label();
            commandLabel = new System.Windows.Forms.Label();
            resultLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.vRDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customCommandsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customCommandsBindingNavigator)).BeginInit();
            this.customCommandsBindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.customCommandsDataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // iDLabel
            // 
            iDLabel.AutoSize = true;
            iDLabel.Location = new System.Drawing.Point(378, 167);
            iDLabel.Name = "iDLabel";
            iDLabel.Size = new System.Drawing.Size(21, 13);
            iDLabel.TabIndex = 6;
            iDLabel.Text = "ID:";
            // 
            // commonFieldLabel
            // 
            commonFieldLabel.AutoSize = true;
            commonFieldLabel.Location = new System.Drawing.Point(319, 219);
            commonFieldLabel.Name = "commonFieldLabel";
            commonFieldLabel.Size = new System.Drawing.Size(135, 13);
            commonFieldLabel.TabIndex = 8;
            commonFieldLabel.Text = "What you speak to the PC:";
            // 
            // commandLabel
            // 
            commandLabel.AutoSize = true;
            commandLabel.Location = new System.Drawing.Point(306, 245);
            commandLabel.Name = "commandLabel";
            commandLabel.Size = new System.Drawing.Size(148, 13);
            commandLabel.TabIndex = 10;
            commandLabel.Text = "The program that is launched:";
            // 
            // resultLabel
            // 
            resultLabel.AutoSize = true;
            resultLabel.Location = new System.Drawing.Point(346, 193);
            resultLabel.Name = "resultLabel";
            resultLabel.Size = new System.Drawing.Size(97, 13);
            resultLabel.TabIndex = 12;
            resultLabel.Text = "What the PC Says:";
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button1.Location = new System.Drawing.Point(23, 74);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(95, 23);
            this.button1.TabIndex = 0;
            this.button1.TabStop = false;
            this.button1.Text = "Start Dictation";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Visible = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button2.Location = new System.Drawing.Point(164, 74);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(108, 23);
            this.button2.TabIndex = 1;
            this.button2.TabStop = false;
            this.button2.Text = "Stop Dictation";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Visible = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button3.Location = new System.Drawing.Point(23, 217);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(75, 23);
            this.button3.TabIndex = 2;
            this.button3.TabStop = false;
            this.button3.Text = "Replay";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(118, 221);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(154, 17);
            this.checkBox1.TabIndex = 3;
            this.checkBox1.TabStop = false;
            this.checkBox1.Text = "Save Replay To Wave File";
            this.checkBox1.UseVisualStyleBackColor = true;
            //this.checkBox1.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // textBox1
            // 
            this.textBox1.BackColor = System.Drawing.SystemColors.Control;
            this.textBox1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.textBox1.Location = new System.Drawing.Point(3, 2);
            this.textBox1.Multiline = true;
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(249, 27);
            this.textBox1.TabIndex = 0;
            this.textBox1.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
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
            this.tableAdapterManager.CustomCommandsTableAdapter = this.customCommandsTableAdapter;
            this.tableAdapterManager.HomeAutomationCommandTableAdapter = null;
            this.tableAdapterManager.HomeAutomationDataTableAdapter = null;
            this.tableAdapterManager.TwitterCommandsTableAdapter = null;
            this.tableAdapterManager.TwitterDataTableAdapter = null;
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
            this.customCommandsBindingNavigator.Size = new System.Drawing.Size(680, 25);
            this.customCommandsBindingNavigator.TabIndex = 6;
            this.customCommandsBindingNavigator.Text = "bindingNavigator1";
            this.customCommandsBindingNavigator.Visible = false;
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
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 21);
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
            // iDTextBox
            // 
            this.iDTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.customCommandsBindingSource, "ID", true));
            this.iDTextBox.Location = new System.Drawing.Point(460, 164);
            this.iDTextBox.Name = "iDTextBox";
            this.iDTextBox.Size = new System.Drawing.Size(100, 20);
            this.iDTextBox.TabIndex = 7;
            this.iDTextBox.TabStop = false;
            // 
            // commonFieldTextBox
            // 
            this.commonFieldTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.customCommandsBindingSource, "CommonField", true));
            this.commonFieldTextBox.Location = new System.Drawing.Point(460, 190);
            this.commonFieldTextBox.Name = "commonFieldTextBox";
            this.commonFieldTextBox.Size = new System.Drawing.Size(100, 20);
            this.commonFieldTextBox.TabIndex = 9;
            this.commonFieldTextBox.TabStop = false;
            this.commonFieldTextBox.TextChanged += new System.EventHandler(this.commonFieldTextBox_TextChanged_1);
            // 
            // commandTextBox
            // 
            this.commandTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.customCommandsBindingSource, "Command", true));
            this.commandTextBox.Location = new System.Drawing.Point(460, 216);
            this.commandTextBox.Name = "commandTextBox";
            this.commandTextBox.Size = new System.Drawing.Size(100, 20);
            this.commandTextBox.TabIndex = 11;
            this.commandTextBox.TabStop = false;
            // 
            // resultTextBox
            // 
            this.resultTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.customCommandsBindingSource, "Result", true));
            this.resultTextBox.Location = new System.Drawing.Point(460, 242);
            this.resultTextBox.Name = "resultTextBox";
            this.resultTextBox.Size = new System.Drawing.Size(100, 20);
            this.resultTextBox.TabIndex = 13;
            this.resultTextBox.TabStop = false;
            this.resultTextBox.TextChanged += new System.EventHandler(this.resultTextBox_TextChanged_1);
            // 
            // customCommandsDataGridView
            // 
            this.customCommandsDataGridView.AutoGenerateColumns = false;
            this.customCommandsDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.customCommandsDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4});
            this.customCommandsDataGridView.DataSource = this.customCommandsBindingSource;
            this.customCommandsDataGridView.Location = new System.Drawing.Point(93, 302);
            this.customCommandsDataGridView.Name = "customCommandsDataGridView";
            this.customCommandsDataGridView.Size = new System.Drawing.Size(446, 62);
            this.customCommandsDataGridView.TabIndex = 14;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "ID";
            this.dataGridViewTextBoxColumn1.HeaderText = "ID";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "CommonField";
            this.dataGridViewTextBoxColumn2.HeaderText = "CommonField";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "Command";
            this.dataGridViewTextBoxColumn3.HeaderText = "Command";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "Result";
            this.dataGridViewTextBoxColumn4.HeaderText = "Result";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(258, 2);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(44, 27);
            this.button4.TabIndex = 15;
            this.button4.TabStop = false;
            this.button4.Text = "D.B.";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // button5
            // 
            this.button5.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button5.Location = new System.Drawing.Point(278, 72);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(45, 27);
            this.button5.TabIndex = 16;
            this.button5.Text = "DB";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // Form4
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(303, 29);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.customCommandsDataGridView);
            this.Controls.Add(iDLabel);
            this.Controls.Add(this.iDTextBox);
            this.Controls.Add(commonFieldLabel);
            this.Controls.Add(this.commonFieldTextBox);
            this.Controls.Add(commandLabel);
            this.Controls.Add(this.commandTextBox);
            this.Controls.Add(resultLabel);
            this.Controls.Add(this.resultTextBox);
            this.Controls.Add(this.customCommandsBindingNavigator);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.checkBox1);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.ForeColor = System.Drawing.SystemColors.ControlText;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form4";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "On Standby";
            this.Load += new System.EventHandler(this.Form4_Load);
            ((System.ComponentModel.ISupportInitialize)(this.vRDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customCommandsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customCommandsBindingNavigator)).EndInit();
            this.customCommandsBindingNavigator.ResumeLayout(false);
            this.customCommandsBindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.customCommandsDataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.TextBox textBox1;
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
        private System.Windows.Forms.TextBox iDTextBox;
        private System.Windows.Forms.TextBox commonFieldTextBox;
        private System.Windows.Forms.TextBox commandTextBox;
        private System.Windows.Forms.TextBox resultTextBox;
        private System.Windows.Forms.DataGridView customCommandsDataGridView;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
    }
}
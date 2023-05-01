/****************************************************************************
*	Author:		 Matthew Mansfield											*
*	Date:		 06/13/2013													*
*	Description: The purpose of this C# programming is to create a voice	*
*				 recognition application that can provide text to speech	*
*				 responses to speech to text commands.                      *
*****************************************************************************
*/
//---------------------------------------------------------------------------
//Using directives - This section lists the namespaces that the application 
//will be using frequently, and saves the programmer from specifying a fully 
//qualified name every time that a method that is contained within is used.
//---------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Speech.Synthesis;
using System.Speech.Recognition;
//---------------------------------------------------------------------------
//Declare namespace
//---------------------------------------------------------------------------
namespace DATABASING
{
    //-----------------------------------------------------------------------
    //Begin the class
    //-----------------------------------------------------------------------
    public partial class Form1 : Form
    {
        //-------------------------------------------------------------------
        //Do this to initialize
        //-------------------------------------------------------------------
        public Form1()
        {
            InitializeComponent();
        }
        //-------------------------------------------------------------------
        //For our purposes, we are not using this but this is basic 
        //navigator binding
        //-------------------------------------------------------------------
        private void customCommandsBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.customCommandsBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.vRDataSet);
        }
        //-------------------------------------------------------------------
        //Load the basic database information, set focus to the given textbox
        //as well as running the FillingLists_method method
        //-------------------------------------------------------------------
        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 
            //'vRDataSet.CustomCommands' table. You can move, or remove it, 
            //as needed.
            this.customCommandsTableAdapter.Fill(this.vRDataSet.CustomCommands);
            this.customCommandsBindingSource.AddNew();
            this.commonFieldTextBox.Focus();
            FillingLists_method();
        }
        //-------------------------------------------------------------------
        //When a command is given we need to find out where it is "located"
        //in the database. This helps us to find the location of the database
        //entry
        //-------------------------------------------------------------------
        private void textBox3_TextChanged_1(object sender, EventArgs e)
        {
            int loc = customCommandsBindingSource.Find("Result", this.textBox3.Text);
            customCommandsBindingSource.Position = loc;
        }
        //-------------------------------------------------------------------
        //Close this Form when this button is pressed
        //-------------------------------------------------------------------
        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        //-------------------------------------------------------------------
        //When we leave this Form, do this
        //-------------------------------------------------------------------
        private void Form2_Leave(object sender, EventArgs e)
        {
            this.Close();
        }
        //-------------------------------------------------------------------
        //Establishing the get set
        //-------------------------------------------------------------------
        public bool visible { get; set; }
        //-------------------------------------------------------------------
        //Main method we run to take results from what the user searches for
        //and places it into the result textbox
        //-------------------------------------------------------------------
        public void runcode_method()
        {
            if (this.resultTextBox1.Text == "")
            {
            }
            else
            {
                System.Diagnostics.Process p = new System.Diagnostics.Process();
                p.StartInfo.FileName = resultTextBox1.Text;
                p.Start();
                //sleep for 1500ms
                System.Threading.Thread.Sleep(1500);
                //clear all textboxes
                this.commandTextBox.Text = "";
                this.resultTextBox.Text = "";
                this.txtProfileName.Text = "";
                this.resultTextBox1.Text = "";
                //set focus here
                this.commandTextBox.Focus();
            }
        }
        //-------------------------------------------------------------------
        //When a command is given we need to find out where it is "located"
        //in the database. This helps us to find the location of the database
        //entry and set the position of the binding source to it
        //(the next few methods are the same)
        //-------------------------------------------------------------------
        public void find_method()
        {
            int loc = customCommandsBindingSource.Find("Command", this.toolStripTextBox1.Text);
            customCommandsBindingSource.Position = loc;
        }
        //-------------------------------------------------------------------
        //When a command is given we need to find out where it is "located"
        //in the database. This helps us to find the location of the database
        //entry and set the position of the binding source to it
        //-------------------------------------------------------------------
        public void checkingValue_method()
        {
            int loc = customCommandsBindingSource.Find("Command", this.commandTextBox.Text);
            customCommandsBindingSource.Position = loc;
        }
        //-------------------------------------------------------------------
        //When a command is given we need to find out where it is "located"
        //in the database. This helps us to find the location of the database
        //entry and set the position of the binding source to it
        //-------------------------------------------------------------------
        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            int loc = customCommandsBindingSource.Find("Command", this.toolStripTextBox1.Text);
            customCommandsBindingSource.Position = loc;
        }
        //-------------------------------------------------------------------
        //Saves the database and then moves to the next available field
        //in the database
        //-------------------------------------------------------------------
        private void btnSave_Click(object sender, EventArgs e)
        {
            this.customCommandsBindingNavigatorSaveItem.PerformClick();
            this.customCommandsBindingSource.AddNew();
            this.customCommandsBindingSource.MoveLast();
            this.toolStripTextBox1.Text = "";
            this.btnOpen.Visible = false;
            this.radioButton1.Checked = false;
            this.radioButton2.Checked = false;
            this.commandTextBox.Focus();
        }
        //-------------------------------------------------------------------
        //If the user wants the system to open a webpage they can select this
        //then this text will be inserted to the correct textbox
        //-------------------------------------------------------------------
        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (this.radioButton1.Checked == true)
            {
                this.btnOpen.Visible = false;
                this.resultTextBox.Text = "http://www.";
                this.resultTextBox.Focus();
            }
        }
        //-------------------------------------------------------------------
        //Run a quick check for the radio buttons
        //-------------------------------------------------------------------
        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (this.radioButton2.Checked == true)
            {
                this.btnOpen.Visible = true;
                this.resultTextBox.Text = "";
            }
        }
        //-------------------------------------------------------------------
        //Open up a dialog box if the user selects to open a program. This is
        //set to default to the C:\ drive
        //-------------------------------------------------------------------
        private void btnOpen_Click(object sender, EventArgs e)
        {
            if (openFileDialog1.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    System.IO.StreamReader sr = new
                    System.IO.StreamReader(openFileDialog1.FileName);
                    this.openFileDialog1.InitialDirectory = @"C:\";
                    sr.Close();
                    //Place the results to this textbox
                    this.resultTextBox.Text = (openFileDialog1.FileName.ToString());
                }
        }
        //-------------------------------------------------------------------
        //If the user is attempting to place a duplicate entry for something
        //the system will create a message that pops up and lets them know. 
        //This is to save you heart ache in the future. No person can serve
        //to masters and in the same no command can server two functions ;)
        //-------------------------------------------------------------------
        private void commandTextBox_Leave(object sender, EventArgs e)
        {
            int loc = customCommandsBindingSource.Find("Command", this.commandTextBox.Text);
            if (loc != -1)
            {
                MessageBox.Show("This is a duplicate entry, please try another word/phrase.", "Data Entry Error");
                this.commandTextBox.Text = "";
                this.commandTextBox.Focus();
            }
        }
        //-------------------------------------------------------------------
        //Reference to this method
        //-------------------------------------------------------------------
        private void btnToListbox_Click(object sender, EventArgs e)
        {
            FillingLists_method();
        }
        //-------------------------------------------------------------------
        //Pretty basic method here
        //-------------------------------------------------------------------
        private void FillingLists_method()
        {
            this.listBox1.DataSource = customCommandsBindingSource;
            this.listBox1.DisplayMember = "Command";
            this.listBox2.DataSource = customCommandsBindingSource;
            this.listBox2.DisplayMember = "Result";
            this.listBox3.DataSource = customCommandsBindingSource;
            this.listBox3.DisplayMember = "CommonField";
        }
        //-------------------------------------------------------------------
        //Create an instance of the SpeechSynthesizer named "synth"
        //-------------------------------------------------------------------
        SpeechSynthesizer synth = new SpeechSynthesizer();
        //-------------------------------------------------------------------
        //Create an instance of the SpeechRecognitionEngine called "sre"
        //-------------------------------------------------------------------
        SpeechRecognitionEngine sre = new SpeechRecognitionEngine();
        //-------------------------------------------------------------------
        //Create Speech Timer
        //-------------------------------------------------------------------
        Timer speechTimer = new Timer();
        //-------------------------------------------------------------------
        //Speak: Takes in a string. Then outputs the string as Speech
        //-------------------------------------------------------------------
        public void Speak(string text)
        {
            //Speak text
            synth.Speak(text);
        }
        //-------------------------------------------------------------------
        //Set the SpeechRate of the Speaker
        //-------------------------------------------------------------------
        public int SpeechRate
        {
            //Value range is -10 to 10
            //Default is 0
            get { return synth.Rate; }
            set { synth.Rate = value; }
        }
        //-------------------------------------------------------------------
        //Starts instance of speech recognition
        //-------------------------------------------------------------------
        public void StartDefaultRecognition()
        {
            string[] words = new string[this.listBox1.Items.Count];
            StartCustomRecognition(words);
        }
        //---------------------------------------------------------------
        //Create an instance of the SpeechSynthesizer named "synth"
        //---------------------------------------------------------------
        private void sendingtoarray_method()
        {
            string[] words = new string[this.listBox1.Items.Count];
        }
        //-------------------------------------------------------------------
        //Called to stop Speech Engine
        //-------------------------------------------------------------------
        public void StopRecognition()
        {
            //Stop Speech Recognition Engine
            sre.RecognizeAsyncStop();
        }
        //-------------------------------------------------------------------
        //Called to setup new grammer
        //-------------------------------------------------------------------
        public void StartCustomRecognition(String[] words)
        {
            //Stop any running instances
            StopRecognition();
            //Set input to default audio device
            sre.SetInputToDefaultAudioDevice();
            //Create a grammer builder instance called grammerBuilder
            GrammarBuilder grammarBuilder = new GrammarBuilder();
            grammarBuilder.Append(new Choices(words));
            //Create a grammer instance called customGrammer that uses the grammer
            //created from GrammerBuilder called "grammerBuilder"
            Grammar customGrammar = new Grammar(grammarBuilder);
            //Unload past grammer and set new grammer
            sre.UnloadAllGrammars();
            sre.LoadGrammar(customGrammar);
            //Create SpeechRecognized Event
            sre.SpeechRecognized += new EventHandler<SpeechRecognizedEventArgs>(sre_Listen);
        }
        //-------------------------------------------------------------------
        //Called to listen for one command
        //-------------------------------------------------------------------
        public void StartListening()
        {
            System.Media.SoundPlayer player = new System.Media.SoundPlayer();
            player.SoundLocation = @"audio/b1.wav";
            player.Play();
            sre.RecognizeAsync(RecognizeMode.Multiple);
            speechTimer.Tick += new EventHandler(speechTimer_Tick);
            speechTimer.Interval = 5000;
            speechTimer.Enabled = true;
            speechTimer.Start();
        }
        //-------------------------------------------------------------------
        //Stop Listening after set time
        //-------------------------------------------------------------------
        void speechTimer_Tick(object sender, EventArgs e)
        {
            StopRecognition();
            speechTimer.Enabled = false;
            speechTimer.Stop();
            System.Media.SoundPlayer player = new System.Media.SoundPlayer();
            player.SoundLocation = @"audio/b1.wav";
            player.Play();
        }
        //-------------------------------------------------------------------
        //Called when word is detected. Passes action onto SpeechList Class
        //-------------------------------------------------------------------
        void sre_Listen(object sender, SpeechRecognizedEventArgs e)
        {
            //Stop Listening
            StopRecognition();
            //Stop Timer
            speechTimer.Enabled = false;
            speechTimer.Stop();
        }
    }
}
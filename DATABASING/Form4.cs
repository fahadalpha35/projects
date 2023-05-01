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
using System.Diagnostics;
using System.Threading;
using SpeechLib;
using MouseKeyboardLibrary; 
using System.Speech.Synthesis;
using System.Speech.Recognition;
using System.Collections;
//---------------------------------------------------------------------------
//Declare namespace
//---------------------------------------------------------------------------
namespace DATABASING
{
    //-----------------------------------------------------------------------
    //Begin the class
    //-----------------------------------------------------------------------
    public partial class Form4 : Form
    {
        //-------------------------------------------------------------------
        //Create an instance of the SpeechSynthesizer named "synth"
        //-------------------------------------------------------------------
        SpeechSynthesizer synth = new SpeechSynthesizer();
        //-------------------------------------------------------------------
        //Create an instance of the SpeechRecognitionEngine called "sre"
        //-------------------------------------------------------------------
        SpeechRecognitionEngine sre = new SpeechRecognitionEngine();
        //-------------------------------------------------------------------
        //SAPI Object Classes
        // - Declaring SAPI Application Object Classes
        //-------------------------------------------------------------------
        private SpeechLib.SpSharedRecoContext objRecoContext;
        private SpeechLib.ISpeechRecoGrammar grammar;
        //-------------------------------------------------------------------
        //Assigning string as variable
        //-------------------------------------------------------------------
        private string strData = "No recording yet";
        //-------------------------------------------------------------------
        //Do this to initialize
        //-------------------------------------------------------------------
        public Form4()
        {
            InitializeComponent();
        }
        //-------------------------------------------------------------------
        //***** This is hidden because the Form is too small to fit it ******
        //Should this button be pressed run our Try-Catch
        //-------------------------------------------------------------------
        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (objRecoContext == null)
                {
                    objRecoContext = new SpeechLib.SpSharedRecoContext();
                    objRecoContext.Recognition += new _ISpeechRecoContextEvents_RecognitionEventHandler(RecoContext_Recognition);
                    grammar = objRecoContext.CreateGrammar(1);
                    grammar.DictationLoad("", SpeechLoadOption.SLOStatic);
                }
                grammar.DictationSetState(SpeechRuleState.SGDSActive);
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("Exception caught when initializing SAPI." + " This application may not run correctly.\r\n\r\n" + ex.ToString(), "Error");
            } 
        }
        //-------------------------------------------------------------------
        //***** This is hidden because the Form is too small to fit it ******
        //-------------------------------------------------------------------
        private void button2_Click(object sender, EventArgs e)
        {
            grammar.DictationSetState(SpeechRuleState.SGDSInactive);
        }
        public void RecoContext_Recognition(int StreamNumber, object StreamPosition, SpeechRecognitionType RecognitionType, ISpeechRecoResult Result)
        {
            strData = Result.PhraseInfo.GetText(0, -1, true);
            Debug.WriteLine("Recognition: " + strData + ", " + StreamNumber + ", " + StreamPosition);
            textBox1.Text = strData; //strData = strData;
        }
        //-------------------------------------------------------------------
        //***** This is hidden because the Form is too small to fit it ******
        //This was used to save as a wav file but the function has not been
        //used since the early days of this program. This code used to work
        //but a lot of changes have been made and it may not work anymore. 
        //You are welcome to play with it if you find you may use some of it.
        //-------------------------------------------------------------------
        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                SpeechVoiceSpeakFlags SpFlags = SpeechVoiceSpeakFlags.SVSFlagsAsync;
                SpVoice Voice = new SpVoice();
                if (checkBox1.Checked)
                {
                    SaveFileDialog sfd = new SaveFileDialog();
                    sfd.Filter = "All files (*.*)|*.*|wav files (*.wav)|*.wav";
                    sfd.Title = "Save to a wave file";
                    sfd.FilterIndex = 2;
                    sfd.RestoreDirectory = true;
                    if (sfd.ShowDialog() == DialogResult.OK)
                    {
                        SpeechStreamFileMode SpFileMode = SpeechStreamFileMode.SSFMCreateForWrite;
                        SpFileStream SpFileStream = new SpFileStream();
                        SpFileStream.Open(sfd.FileName, SpFileMode, false); Voice.AudioOutputStream = SpFileStream;
                        Voice.Speak("You recorded the following message " + strData, SpFlags);
                        Voice.WaitUntilDone(Timeout.Infinite);
                        SpFileStream.Close();
                    }
                }
                else
                {
                    Voice.Speak("You recorded the following message" + strData, SpFlags);
                }
            }
            catch
            {
                MessageBox.Show("Speak error", "SimpleTTS", MessageBoxButtons.OK, MessageBoxIcon.Error);
            } 
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
        //This loads the "connection" to the database and populates the table
        //-------------------------------------------------------------------
        private void Form4_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'vRDataSet.CustomCommands' table. You can move, or remove it, as needed.
            this.customCommandsTableAdapter.Fill(this.vRDataSet.CustomCommands);
            button1_Click(sender, e);
        }
        //-------------------------------------------------------------------
        //This is the "D.B." button
        //-------------------------------------------------------------------
        private void button4_Click(object sender, EventArgs e)
        {
            Form1 form = new Form1();
            form.Show();
        }
        //-------------------------------------------------------------------
        //When a change happens, keep the focus
        //-------------------------------------------------------------------
        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            this.textBox1.Focus();
            find_method();
        }
        //-------------------------------------------------------------------
        //This searches for the matching command in the database
        //-------------------------------------------------------------------
        public void find_method()
        {
            int loc = customCommandsBindingSource.Find("Command", this.textBox1.Text);
            customCommandsBindingSource.Position = loc;
        }
        //-------------------------------------------------------------------
        //When the text is changed in the "resultant" text box run this 
        //method. This is what actually makes the computer speak anything to
        //you. 
        //-------------------------------------------------------------------
        private void resultTextBox_TextChanged(object sender, EventArgs e)
        {
            runcode_method();
        }
        //-------------------------------------------------------------------
        //This method speaks the matching text, pauses and then resets the 
        //input textbox by setting it to ""
        //-------------------------------------------------------------------
        public void runcode_method()
        {
            if (this.resultTextBox.Text == "")
            {
            }
            else
            {
                System.Diagnostics.Process p = new System.Diagnostics.Process();
                // p.StartInfo.WorkingDirectory = Path.GetDirectoryName(path);
                p.StartInfo.FileName = resultTextBox.Text;
                p.Start();

                System.Threading.Thread.Sleep(1500);

                this.textBox1.Text = "";
                this.resultTextBox.Text = "";
                this.textBox1.Focus();
            }
        }
        //-------------------------------------------------------------------
        //A quick and dirty conversion of text to speech
        //-------------------------------------------------------------------
        void speakbox()
        {
            Convert.ToString(commonFieldTextBox.Text);
            Speak(commonFieldTextBox.Text);
        }
        //-------------------------------------------------------------------
        //Take string text and turn it into a speech using the "synth"
        //that was initialized earlier using SpeechSynthesizer
        //-------------------------------------------------------------------
        public void Speak(string text)
        {
            synth.Speak(text);
        }
        //-------------------------------------------------------------------
        //This uses the speakbox method to take the data in the 
        //commonFieldTextbox and turn it to speech
        //-------------------------------------------------------------------
        private void commonFieldTextBox_TextChanged_1(object sender, EventArgs e)
        {
            speakbox();
        }
        //-------------------------------------------------------------------
        //When text is changed in this textbox then run this method
        //-------------------------------------------------------------------
        private void resultTextBox_TextChanged_1(object sender, EventArgs e)
        {
            runcode_method();
        }
        //-------------------------------------------------------------------
        //This button is not visible but still can be accessed if needed.
        //This simply runs a batch file.
        //-------------------------------------------------------------------
        private void button5_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("D:\\VR_MAIN\\VR1\\DATABASING current version\\DATABASING\\OpenDB.bat");
        }
    }
}
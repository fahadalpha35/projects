using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Speech.Synthesis;
using System.Speech.Recognition;
using System.Diagnostics;
using System.IO;
using System.IO.Ports;
using System.Xml;
using System.Speech.AudioFormat;
using Microsoft;
using System.Globalization;
using SpeechLib;
using System.Speech.AudioFormat;


namespace Sam_Speech_Recognition_Program
{
    public partial class Form1 : Form
    {

        SpeechSynthesizer s = new SpeechSynthesizer();
        Boolean wake = true;


        SerialPort port = new SerialPort("COM4", 9600, Parity.None, 8, StopBits.One);

        String temp;
        String condition;


        private const int grammarId = 10;
        private bool speechEnabled = false;
        private bool speechInitialized = false;
        private String PreCommandString = "Select";
        private SpeechLib.SpSharedRecoContext objRecoContext;
        private SpeechLib.ISpeechRecoGrammar grammar;
        private SpeechLib.ISpeechGrammarRule ruleTopLevel;
        private SpeechLib.ISpeechGrammarRule ruleListItems;


        public bool SpeechEnabled
        {
            get
            {
                return speechEnabled;
            }
            set
            {
                if (speechEnabled != value)
                {
                    speechEnabled = value;
                    if (this.DesignMode) return;

                    if (speechEnabled)
                    {
                        EnableSpeech();
                    }
                    else
                    {
                        DisableSpeech();
                    }
                }
            }
        }




        Choices List = new Choices();
        public Form1()
        {
            SpeechRecognitionEngine rec = new SpeechRecognitionEngine();


        


                string QEvent;
                string ProcWindow;
                double timer = 10;
                int count = 1;
                Random rnd = new Random();

                List.Add(new string[] { "Hello sir", "hello sam", "how are you",
                        "i'm great", "who created you?", "sam", "what is the time",
                        "what time is it", "what is the date today", "open my facebook",
                        "open facebook", "open youtube", "open my youtube channel",
                        "open youtube downloader", "open admin control one",
                        "open control two", "open my hotmail", "open my imail", "open my gmail",
                        "open my 4shared", "open my google drive", "open izone",
                        "open elearn", "open google", "open online photo editor",
                        "open my spotify", "open my soundcloud", "open my reverbnation",
                        "Sam i am horny", "sleep", "wake", "restart", "update", "good morning",
                        "good afternoon", "good evening", "good night", "light on",
                        "light off", "open office", "close office", "open my computer",
                        "close my computer", "open allstuffs", "close allstuffs",
                        "open music folder", "close music folder", "open software folder",
                        "close software folder", "open local drive", "close local drive",
                        "whats the weather like", "whats the temperature", "Do you want to get high?",
                        "Sam i am hungry", "test", "exit", "baby"
                    });

    

            Grammar gr = new Grammar(new GrammarBuilder(List));
            gr.Name = "ListGrammar";


            try
            {

                rec.RequestRecognizerUpdate();
                rec.LoadGrammar(gr);
                rec.SpeechRecognized += rec_SpeachRecognized;
                rec.SetInputToDefaultAudioDevice();
                rec.RecognizeAsync(RecognizeMode.Multiple);
                Console.ReadLine();
            }


            catch { return; }



            // Initialize a new instance of the SpeechSynthesizer.
            using (SpeechSynthesizer synth = new SpeechSynthesizer())
            {


                string AudioFormats = "";
                foreach (SpeechAudioFormatInfo fmt in synth.Voice.SupportedAudioFormats)
                {
                  AudioFormats += String.Format("{0}\n",
                  fmt.EncodingFormat.ToString());
                }


                // Select the US English voice.
                synth.SelectVoiceByHints(VoiceGender.Male, VoiceAge.Child);

                // Configure the audio output. 
                synth.SetOutputToWaveFile(@"C:\test\GenderAge.wav");

                // Create a SoundPlayer instance to play the output audio file.
                System.Media.SoundPlayer m_SoundPlayer =
                  new System.Media.SoundPlayer(@"C:\test\GenderAge.wav");


                // Speak the prompt and play the output file.
                synth.Speak("Sam Initialized");
                m_SoundPlayer.Play();


                Console.WriteLine();


                // build and speak a prompt
                PromptBuilder builder = new PromptBuilder();
                builder.AppendText("Sam Initialized");
                s.Speak(builder);


                // Output information about all of the installed voices. 
                Console.WriteLine("Installed voices -");
                foreach (InstalledVoice voice in synth.GetInstalledVoices())
                {
                    VoiceInfo info = voice.VoiceInfo;
                    Console.WriteLine(" Voice Name: " + info.Name);
                }
            }


            Console.WriteLine();
            Console.WriteLine("Press any key to exit...");


            s.SetOutputToDefaultAudioDevice();


         

            


            InitializeComponent();
        }


        private void InitializeSpeech()
        {
            Debug.WriteLine("Initializing SAPI objects...");
        }





            private bool EnableSpeech()
        {
            Debug.Assert(speechEnabled, "speechEnabled must be true in EnableSpeech");

            if (this.DesignMode) return false;

            if (speechInitialized == false)
            {
                InitializeSpeech();
            }
            else
            {
                RebuildGrammar();
            }

            objRecoContext.State = SpeechRecoContextState.SRCS_Enabled;
            return true;
        }



        public bool RebuildGrammar()
        {
            if (!speechEnabled || this.DesignMode)
            {
                return false;
            }


            return true;
        }



        private bool DisableSpeech()
        {
            if (this.DesignMode) return false;

            Debug.Assert(speechInitialized,
                         "speech must be initialized in DisableSpeech");

            if (speechInitialized)
            {
                // Putting the recognition context to disabled state will 
                // stop speech recognition. Changing the state to enabled 
                // will start recognition again.
                objRecoContext.State = SpeechRecoContextState.SRCS_Disabled;
            }

            return true;
        }



        public String GetWeather(String input)
        {
            String query = String.Format("https://query.yahooapis.com/v1/public/yql?q=select * from weather.forecast where woeid in (select woeid from geo.places(1) where text='city, state')&format=xml&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys");
            XmlDocument wData = new XmlDocument();
            wData.Load(query);

            XmlNamespaceManager manager = new XmlNamespaceManager(wData.NameTable);
            manager.AddNamespace("yweather", "http://xml.weather.yahoo.com/ns/rss/1.0");

            XmlNode channel = wData.SelectSingleNode("query").SelectSingleNode("results").SelectSingleNode("channel");
            XmlNodeList nodes = wData.SelectNodes("query/results/channel");
            try
            {
                temp = channel.SelectSingleNode("item").SelectSingleNode("yweather:condition", manager).Attributes["temp"].Value;
                condition = channel.SelectSingleNode("item").SelectSingleNode("yweather:condition", manager).Attributes["text"].Value;

                if (input == "temp")
                {
                    return temp;
                }


                if (input == "cond")
                {
                    return condition;
                }
            }
            catch
            {
                return "Error Reciving data";
            }
            return "error";
        }

        public static void killProg(String s)
        {
            System.Diagnostics.Process[] procs = null;

            try
            {
                procs = Process.GetProcessesByName(s);
                Process prog = procs[0];

                if (!prog.HasExited)
                {
                    prog.Kill();
                }

            }

            finally
            {
                if (procs != null)
                {
                    foreach (Process p in procs)
                    {
                        p.Dispose();
                    }
                }
            }

        }

        public void restart()
        {
            Process.Start(@"c:\Users\Sam\Sam Speech Recognition Program\Sam Speech Recognition Program.exe");
            Environment.Exit(0);
        }

        public void say(String h)
        {
            s.Speak(h);
            textBox2.AppendText(h + "\n");
        }

        //Commands


        static System.Threading.ManualResetEvent _completed = null;

        public string GetInstalledVoices { get; private set; }

        private void rec_SpeachRecognized(object sender, SpeechRecognizedEventArgs e)
        {
            String r = e.Result.Text;
            string[] start_array = { "start", "some other words that sounds same as start or result from e.Result.Text when you say start" };



            



            if (start_array.Contains(r))
            {
                SendKeys.SendWait("^{ESC}");
            }

            if (r == "test") // e.Result.Text contains the recognized text
            {
                Console.WriteLine("The test was successful!");
            }
            else if (r == "exit")
            {
                _completed.Set();
            }

            if (r == "wake")
            {
                say("At your service sir");
                wake = true;
                label3.Text = "State: Awake";
            }

            if (r == "sleep")
            {
                say("See you soon sir");
                wake = false;
                label3.Text = "State: Sleep mode";
            }

            if (r == "light on")
            {
                say("Light On sir");
                port.Open();
                port.WriteLine("A");
                port.Close();
            }

            if (r == "light off")
            {
                say("Light Off sir");
                port.Open();
                port.WriteLine("B");
                port.Close();
            }



            if (wake == true)
            {

                if (r == "whats the weather like")
                {
                    say("The sky is " + GetWeather("cond") + ".");
                }

                if (r == "whats the temperature")
                {
                    say("It is " + GetWeather("temp") + "degrees.");
                }


                if (r == "open office")
                {
                    say("Openning Office sir");
                    Process.Start(@"C:\Program Files (x86)\OpenOffice 4\program\soffice.exe");
                }

                if (r == "close office")
                {
                    say("Closing Office sir");
                    killProg("soffice.bin");
                }

                if (r == "open my computer")
                {
                    say("Openning My Computer sir");
                    Process.Start(@"C:\Users\Administrator\Desktop\Sam");
                }

                if (r == "close my computer")
                {
                    say("Closing My Computer sir");
                    killProg("Sam.bin");
                }


                if (r == "restart" || r == "update")
                {
                    restart();
                }

                //what you say
                if (r == "hello sam")
                {
                    //what it says
                    say("Hello sir");
                }

                if (r == "Sam i am hungry")
                {

                    say("Noted sir, lets order food from Mcdonalds");
                    Process.Start("https://www.mcdelivery.com.my/");
                }

                if (r == "Do you want to get high?")
                {

                    say("haha, i'm already high");
                }

                if (r == "how are you")
                {

                    say("Fucked up, How about you sir?");
                }

                if (r == "i'm great")
                {

                    say("Good to hear that sir");
                }

                if (r == "who created you?")
                {

                    say("Faahaad, the sneeeeeek. Snakes these days you know, can't say much");
                }

                if (r == "baby")
                {

                    say("yes baby, fuck me");
                }

                if (r == "sam")
                {

                    say("At your service sir");
                }

                if (r == "what is the time")
                {

                    say(DateTime.Now.ToString("h:mm tt"));
                }

                if (r == "what time is it")
                {

                    say(DateTime.Now.ToString("h:mm tt"));
                }

                if (r == "what is the date today")
                {

                    say(DateTime.Now.ToString("M/d/yyyy"));
                }

                if (r == "open my facebook")
                {

                    say("Openning your Facebook sir");
                    Process.Start("http://www.facebook.com/fahad.evil.of.dt");
                }

                if (r == "open facebook")
                {

                    say("Openning Facebook sir");
                    Process.Start("http://www.facebook.com");
                }

                if (r == "open youtube")
                {

                    say("Openning Youtube sir");
                    Process.Start("http://www.youtube.com");
                }

                if (r == "open youtube downloader")
                {

                    say("Openning Online Youtube Downloader sir");
                    Process.Start("http://en.savefrom.net/1-how-to-download-youtube-video");
                }

                if (r == "open admin control one")
                {

                    say("Openning Admin Control One sir");
                    Process.Start("http://192.168.0.1");
                }

                if (r == "open control two")
                {

                    say("Openning Control Two sir");
                    Process.Start("http://192.168.1.1");
                }

                if (r == "open my hotmail")
                {

                    say("Openning your Hotmail sir");
                    Process.Start("https://outlook.live.com/owa/?realm=hotmail.com");
                }

                if (r == "open my imail")
                {

                    say("Openning your Imail sir");
                    Process.Start("https://outlook.office.com/owa/?realm=imail.sunway.edu.my&vd=www");
                }

                if (r == "open my gmail")
                {

                    say("Openning your Gmail sir");
                    Process.Start("https://mail.google.com/mail/u/0/#inbox");
                }

                if (r == "open my 4shared")
                {

                    say("Openning your 4shared sir");
                    Process.Start("http://www.4shared.com/account/home.jsp#dir=Od3l_PR_");
                }

                if (r == "open my google drive")
                {

                    say("Openning your Google Drive sir");
                    Process.Start("https://drive.google.com/drive/u/0/my-drive");
                }

                if (r == "open izone")
                {

                    say("Openning Izone sir");
                    Process.Start("https://izone.sunway.edu.my/login");
                }

                if (r == "open elearn")
                {

                    say("Openning Elearn sir");
                    Process.Start("https://elearn.sunway.edu.my");
                }

                if (r == "open google")
                {

                    say("Openning Google sir");
                    Process.Start("http://www.google.com");
                }

                if (r == "open online photo editor")
                {

                    say("Openning Online Photo Editor sir");
                    Process.Start("https://www.befunky.com/create/");
                }

                if (r == "open my soundcloud")
                {

                    say("Openning your Soundcloud sir");
                    Process.Start("https://soundcloud.com/you/sets");
                }

                if (r == "open my spotify")
                {

                    say("Openning your Spotify sir");
                    Process.Start("https://play.spotify.com/browse");
                }

                if (r == "open my reverbnation")
                {

                    say("Openning your Reverbnation sir");
                    Process.Start("https://www.reverbnation.com/f%C3%A1%C4%A5%C4%81%C3%90%C3%82%C4%A5me%C3%90sdiscography/songs");
                }

                if (r == "open my youtube channel")
                {

                    say("Openning your Youtube Channel sir");
                    Process.Start("https://www.youtube.com/channel/UCOl4jEQ90oTnWiZrfmUM00A/videos?sort=dd&view=0&shelf_id=0");
                }

                if (r == "Sam i am horny")
                {

                    say("Openning Xvideos sir");
                    Process.Start("https://www.xvideos.com");
                }

                if (r == "good morning")
                {

                    say("Good Morning Sir");
                }

                if (r == "good afternoon")
                {

                    say("Good Afternoon Sir");
                }

                if (r == "good evening")
                {

                    say("Good Evening Sir");
                }

                if (r == "good night")
                {

                    say("Good Night Sir");
                }


            }
            textBox1.AppendText(r + "\n");
        }

        private void Form1_Load(object sender, EventArgs e)
        {
         
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;
using Windows.UI.Core;
using Windows.Media.SpeechRecognition;
using Windows.ApplicationModel.Resources.Core;
using System.Speech.Synthesis;
using System.Speech.Recognition;
using System.Diagnostics;

// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=234238

namespace SpeechPlatform1
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class SamMainPage : Page
    {

        private Windows.Media.SpeechRecognition.SpeechRecognizer _speechRecognizer;
        private readonly CoreDispatcher _dispatcher;


        SpeechSynthesizer s = new SpeechSynthesizer();
        Boolean wake = true;
        Choices List = new Choices();



        public SamMainPage()
        {

            SpeechRecognitionEngine rec = new SpeechRecognitionEngine();

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
                        "Sam i am hungry", "baby" });

            Grammar gr = new Grammar(new GrammarBuilder(List));

            try
            {
                rec.RequestRecognizerUpdate();
                rec.LoadGrammar(gr);
                rec.SpeechRecognized += rec_SpeachRecognized;
                rec.SetInputToDefaultAudioDevice();
                rec.RecognizeAsync(RecognizeMode.Multiple);
            }

            catch { return; }


            s.SelectVoiceByHints(VoiceGender.Male);
            s.Speak("Sam Initialized");


            this.InitializeComponent();

            InitializeComponent();

            _dispatcher = CoreWindow.GetForCurrentThread().Dispatcher;

            InitializeRecognizer();
        }

        public async void InitializeRecognizer()
        {
            var permissionGained = await AudioCapturePermissions.RequestMicrophonePermission();
            if (permissionGained)
            {
                ResourceManager.Current.MainResourceMap.GetSubtree("LocalizationSpeechResources");

                ResetRecognizerIfInitialized();

                _speechRecognizer = new Windows.Media.SpeechRecognition.SpeechRecognizer(Windows.Media.SpeechRecognition.SpeechRecognizer.SystemSpeechLanguage);

                SetupConstraits();

                await _speechRecognizer.CompileConstraintsAsync();

                _speechRecognizer.ContinuousRecognitionSession.ResultGenerated += ContinuousRecognitionSession_ResultGenerated;

            }
            else
            {
                throw new Exception("Permission to access capture resources was not given by the user; please set the application setting in Settings->Privacy->Microphone.");
            }
        }

        private void ResetRecognizerIfInitialized()
        {
            if (_speechRecognizer != null)
            {
                _speechRecognizer.Dispose();
                _speechRecognizer = null;
            }
        }

        private void SetupConstraits()
        {
            var onConstrait = new SpeechRecognitionListConstraint(new[] { "lights on", "turn the lights on" }, "on");
            var offConstraint = new SpeechRecognitionListConstraint(new[] { "lights off", "turn the lights off", "off" });
            _speechRecognizer.Constraints.Add(onConstrait);
            _speechRecognizer.Constraints.Add(offConstraint);
        }


        public void say(String h)
        {
            s.Speak(h);
            textBox2.Text = h + "\n";
        }

        private void rec_SpeachRecognized(object sender, SpeechRecognizedEventArgs e)
        {

            String r = e.Result.Text;


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

                if (wake == true)
                {


                    












                }

            textBox2.Text = r + "\n";

        }

        private async void startListenBtn_ClickAsync(object sender, RoutedEventArgs e)
        {
            var result = await _speechRecognizer.RecognizeAsync();
            if (result.Status == SpeechRecognitionResultStatus.Success)
            {
                HandleResult(result);
            }
        }

        private async void startContinousListenBtn_ClickAsync(object sender, RoutedEventArgs e)
        {
            await _speechRecognizer.ContinuousRecognitionSession.StartAsync();
        }

        private async void stopContinousListenBtn_ClickAsync(object sender, RoutedEventArgs e)
        {
            await _speechRecognizer.ContinuousRecognitionSession.StopAsync();
        }

        private void ContinuousRecognitionSession_ResultGenerated(SpeechContinuousRecognitionSession sender, SpeechContinuousRecognitionResultGeneratedEventArgs args)
        {
            HandleResult(args.Result);
        }

        private async void HandleResult(SpeechRecognitionResult result)
        {
            await _dispatcher.RunAsync(CoreDispatcherPriority.Normal, () =>
            {
                var tag = result.Constraint?.Tag ?? "";
                outputTxt.Text = result.Text + " tag: " + tag + " confidence: " + result.Confidence;

                //call logics here. 
                //lightswitcher(tag);
            });
        }

        private void outputTxt_SelectionChanged(object sender, RoutedEventArgs e)
        {

        }
    }
}

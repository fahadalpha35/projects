﻿// Copyright(c) 2017 Google Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License"); you may not
// use this file except in compliance with the License. You may obtain a copy of
// the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations under
// the License.
//
// [START translate_quickstart]

using Google.Cloud.Translation.V2;
using System;

public class QuickStart
{
    public static void Main(string[] args)
    {
        Console.OutputEncoding = System.Text.Encoding.Unicode;
        TranslationClient client = TranslationClient.Create();
        var response = client.TranslateText("Hello World.", "ru");
        Console.WriteLine(response.TranslatedText);
    }
}
// [END translate_quickstart]

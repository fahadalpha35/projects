﻿// Copyright(c) 2016 Google Inc.
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

using System;
using System.IO;
using log4net.Config;
using System.Web.Http;
using System.Web.Routing;

namespace GoogleCloudSamples
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        // [START log4net_config]
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);

            // Configure log4net to use Stackdriver logging from the XML configuration file.
            log4net.Config.XmlConfigurator.Configure();
        }
        // [END log4net_config]
    }
}

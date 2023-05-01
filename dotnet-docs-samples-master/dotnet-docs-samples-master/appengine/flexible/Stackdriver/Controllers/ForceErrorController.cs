﻿/*
 * Copyright (c) 2017 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

using System;
using Microsoft.AspNetCore.Mvc;

namespace Stackdriver.Controllers
{
    public class ForceErrorController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            // Simulate an exception.
            bool exception = true;
            if (exception)
            {
                // [START error_reporting_exception]
                throw new Exception("Generic exception for testing Stackdriver Error Reporting");
                // [END error_reporting_exception]
            }
            return View();
        }
    }
}

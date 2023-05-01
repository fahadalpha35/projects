# App Engine Flexible Environment Samples

These samples demonstrate how to run .NET core applications in 
[Google App Engine Flexible Environment](https://cloud.google.com/appengine/docs/flexible/).

App Engine is not the only way to run .NET applications on Google Cloud Platform.
[Compute Engine](https://cloud.google.com/compute/) can also run .NET applications.

## Build and Run

1.  **Follow the instructions in the [root README](../../README.md).**

2.  Install the [Google Cloud SDK](https://cloud.google.com/sdk/).  The Google Cloud SDK
    is required to deploy .NET applications to App Engine.

2.  Install [.NET Core 1.0.3 SDK Preview 2 build 3156](https://github.com/dotnet/core/blob/master/release-notes/download-archives/1.0.3-preview2-download.md).

2.  Visual Studio is not required, but to build and run .NET *core* applications,
    Visual Studio users need to download and install 
	[.NET Core tools](https://www.microsoft.com/net/core#windowsvs2015).

3.  [Google Cloud Tools for Visual Studio](
	https://marketplace.visualstudio.com/items?itemName=GoogleCloudTools.GoogleCloudPlatformExtensionforVisualStudio)
    make it easy to deploy to App Engine.  Install them if you are running Visual Studio.

3.  Follow the instructions in each project's README. 
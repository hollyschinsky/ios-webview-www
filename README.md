## ios-webview-www
The required resources needed for the sample iOS PhoneGap project template. Includes all the core plugins as well. Refer to the [Prototype for iOS Embedded Webviews Project](https://github.com/phonegap/phonegap-webview-ios) for example of using with the **CordovaLib** framework and plugins.

### Usage
1. Add the following to your native iOS project Podfile to get this dependency from the CocoaPods registry	
	`pod 'ios-webview-www'`	
	
*The iOS Embedded WebView Prototype project includes a sample Podfile with all Cordova dependencies set up including this one. Refer to it to get started
 quickly.* 
	
2. Install the pods referenced in the Podfile, including this one from the terminal using the CocoaPods `pod` command:
	`pod install`
	
3. Close the native Xcode project and open the newly created `.xcworkspace` project which now includes all of the Cordova dependency pods 


### Example Podfile with Cordova Dependencies
For example, a Podfile in a native project might look like this to set it up for Cordova use:

	platform :ios, '8.0'

	pod 'Cordova’
	pod 'CordovaPlugin-device’
	pod 'CordovaPlugin-dialogs’
	pod 'CordovaPlugin-globalization’
	pod 'CordovaPlugin-geolocation’
	pod 'CordovaPlugin-device-orientation’
	pod 'CordovaPlugin-battery-status’
	pod 'CordovaPlugin-vibration’
	pod 'CordovaPlugin-device-motion’
	pod 'CordovaPlugin-network-information’
	pod 'CordovaPlugin-battery-status’
	pod 'CordovaPlugin-splashscreen’
	pod 'CordovaPlugin-geolocation’
	pod 'CordovaPlugin-contacts’
	pod 'CordovaPlugin-inappbrowser’
	pod 'CordovaPlugin-FileManager', '~> 3.0'
	pod 'CordovaPlugin-file-transfer', '~> 0.4'
	pod 'CordovaPlugin-media-capture', '~> 0.2'
	pod 'CordovaPlugin-media', '~> 0.2'

	pod 'ios-webview-www'

	target ‘iOS-Webview-Proto’ do

	end

### Tips
* Be sure to change the target name to your native project name
* You may need to change the version of platform specified or specify certain versions for other plugins.
* If you update anything in the podfile where you have to run a `pod install` again, you must close the Workspace project in Xcode and open the newly generated one. 


### Embedding Cordova in a Native iOS Project
** This project assumes you have [previously installed CocoaPods](https://guides.cocoapods.org/using/getting-started.html) 

1. Create a Native Xcode Project - for example using the Single View Controller project
2. Add a `Podfile` - use the one from the sample prototype project or run `pod init` and modify it
3. Run `pod install` from command line to install the Cordova dependencies
4. Close your Xcode project 
5. Open the newly created `.xcworkspace` file created from the `pod install`
6. Use Cordova - for instance try the `CDVViewController` in your native project. Open the *Main.storyboard** file 
and change the Custom Class value from the default `ViewController` to a `CDVViewController` in the *Identity Inspector*  

![Pods in Native Project](pods.png)

### Run it
Run the app. You should see the custom iOS template version of the PhoneGap Hello world sample running with the Device Ready event firing and 
some messages indicating the use of some of the dependent plugins to ensure they've been properly referenced. 

![Running device plugin](ss1.png)
![Running connection plugin](ss2.png)
![Device Ready Fired](ss3.png)

**LOGS from `pod install`**

	Analyzing dependencies
	Fetching podspec for `phonegap-hello` from `~/github-projects/ios-webview-www`
	Downloading dependencies
	Installing Cordova (3.9.1)
	Installing CordovaPlugin-FileManager (3.0.0)
	Installing CordovaPlugin-battery-status (0.2.10)
	Installing CordovaPlugin-contacts (0.2.12)
	Installing CordovaPlugin-device (0.2.11)
	Installing CordovaPlugin-device-motion (0.2.9)
	Installing CordovaPlugin-device-orientation (0.3.1)
	Installing CordovaPlugin-dialogs (0.2.9)
	Installing CordovaPlugin-geolocation (0.3.6)
	Installing CordovaPlugin-globalization (0.2.4)
	Installing CordovaPlugin-inappbrowser (0.3.0)
	Installing CordovaPlugin-media (0.2.4)
	Installing CordovaPlugin-network-information (0.2.3)
	Installing CordovaPlugin-splashscreen (0.2.5)
	Installing CordovaPlugin-vibration (0.3.3)
	Installing phonegap-hello (0.0.1)
	Generating Pods project
	Integrating client project

	[!] Please close any current Xcode sessions and use `iOS-Webview-Proto.xcworkspace` for this project from now on.
	Sending stats
	Sending stats
	Pod installation complete! There are 16 dependencies from the Podfile and 16 total pods installed.
	
	
### TODO
1. Update the cordova_plugins.js file with the Cordova required plugin references being added and fixed.
2. Licensing - updated if needed
3. Re-tag and submit with any changes to resources (plugins and cordova_plugins.js)
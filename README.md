## ios-webview-www
The required resources needed for the sample iOS PhoneGap project template. Includes all the core plugins as well. 

Refer to the [Prototype for iOS Embedded Webviews Project](https://github.com/phonegap/phonegap-webview-ios) for example of using with the **CordovaLib** framework and plugins.

**MUST CHANGE THIS LINE**


	pod 'phonegap-hello', :path => '~/github-projects/ios-webview-www'

###1) Add this to native project podfile (dev't)
	pod 'phonegap-hello', :path => '~/github-projects/ios-webview-www'

or 
###Add this to native project podfile (once submitted to cocoapods site)
	pod 'phonegap-hello'
	
### 2) Install pods referenced in pod file
	pod install
	
### 3) Close native Xcode project and open new .xcworkspace project referencing the Pods installed
For example - see project **Webview2.xcworkspace**


Podspec for hello world project, core platform plugins and required files located at:
[https://github.com/hollyschinsky/ios-webview-www]
(https://github.com/hollyschinsky/ios-webview-www)	

### Notes
For example, a Podfile in a native project might look like this to set it up for Cordova use:

	platform :ios, '6.0'

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

	pod 'phonegap-hello', :path => '~/github-projects/ios-webview-www'

	target ‘Webview2’ do

	end

* Be sure to change the target name to your native project name
* You may need to change the version of platform specified or specify certain versions for other plugins.
* If you update anything in the pod file where you have to run a `pod install` again, you must close the Workspace project in Xcode and open the newly generated one. 


## Steps
** Requires you to install cocoa pods (add link here)

1. Create Native Xcode Project
2. Add Podfile from sample prototype
 (or run `pod init` and modify it)
3. Run `pod install` from command line
4. Close Xcode project 
5. Open the newly created `.xcworkspace` file in the same location where pod install ran
6. Now use a CDVViewController in the Storyboard and try to run it.
7. Open the *Main.storyboard** file in the main project directory for the native project in Xcode (make sure that's the entry point specified in the General tab settings for the project - Deployment Info section. There's a LaunchScreen.storyboard for the Splash screen too).
8. Change the class for the ViewController to CDVViewController in the Identity Inspector where it says Custom Class (show screenshot)
9. When the app runs you should see some messages indicating the device version and the cordova device ready work

LOGS from pod install

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
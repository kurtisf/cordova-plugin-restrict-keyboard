# cordova-plugin-restrict-keyboard
This is a simple Cordova plugin to restrict an iOS app to only use the standard keyboard to prevent crashes on iOS 9.  We found that with our Ionic app, once iOS 9 was released we started seeing a  lot of crashes on iPhone only for this error:


2015-10-08 11:35:23.066 MyApp[1141:520927] This application is modifying the autolayout engine from a background thread, which can lead to engine corruption and weird crashes.  This will cause an exception in a future release.

…

2015-10-08 11:35:23.069 MyApp[1141:520927] *** Assertion failure in -[UIApplication _cachedSystemAnimationFenceCreatingIfNecessary:], /BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKit/UIKit-3505.17/UIApplication.m:1697
2015-10-08 11:35:23.072 MyApp[1141:520927] *** Terminating app due to uncaught exception 'NSInternalInconsistencyException', reason: 'accessing _cachedSystemAnimationFence requires the main thread'

It would seem that the a keyboard extension such as Swype is running code when it slides out that ends up on a background thread.  


## Install ##

You can add the plugin to your Cordova project from this repository:

	cordova plugin add https://github.com/kurtisf/cordova-plugin-restrict-keyboard


## Setup ##

None!  Just add the plugin and that’s it!

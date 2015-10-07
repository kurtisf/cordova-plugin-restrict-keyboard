//
//  CDVRestrictKeyboards.m
//  AuctionSniper
//
//  Created by Kurt Fickewirth on 10/7/15.
//
//  Extends the AppDelegate to deny any custom keyboard from being used with this app.

#import "AppDelegate.h"

@implementation AppDelegate(AppDelegate)

- (BOOL)application:(UIApplication *)application shouldAllowExtensionPointIdentifier:(NSString *)extensionPointIdentifier {
    if ([extensionPointIdentifier isEqualToString: UIApplicationKeyboardExtensionPointIdentifier]) {
        return NO;
    }
    return YES;
}

@end


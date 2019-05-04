//
//  AppDelegate.swift
//  Overview
//
//  Created by Maribel Montejano on 5/4/19.
//  Copyright © 2019 Maribel Montejano. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    /*
     UIWindow: The backdrop for your app's user interface and the object that dispatches events to the views.
     https://developer.apple.com/documentation/uikit/uiwindow
     
     Windows work with view controllers to handle events and perform many other tasks that are important to app's operation
     
     UIKit handles most window-related interactions, working with other objects as needed to implement many app behaviors
     
     When to use windows:
        - Provide a main window to display your app's content
        - Create additional windows (as needed) to display additional content
    */

    
    /*
     Storyboards require the presence of a window property on the app delegate object (as shown here)
     (automatically provided by Xcode)
     */
    
    
    /*
     UIWindow for a handful of other tasks:
        - settting the z-axis level of window (affects the visibility of window relative to other windows)
        - showing windows and making them the target of keyboard events
        - converting coordinate values to and from the window's coordinate system
        - changing the root view controller of a window
        - changing the screen on which the window is displayed
     
     UIWindows do not have a visual appearance of their own
     
     window is a HOST of one or more views (these are managed by the window's root view controller)
     configure the root view controller in storyboards
     
     It is RARE that you need to subclass UIWindow.
     
     custom behaviors when a window's key status changes
        becomeKey(): called automatically to inform the window that it has become the key window
        resignKey(): called automatically to inform the window that it is no longer the key window
    */
    
    // This is the app's main window
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Step 1
        // Override point for customization after application launch.
        
        print(#function)
        
        print(window?.isKeyWindow)          // false (has not been set as the key window yet)
        print(window?.rootViewController)   // ViewController (the root view controller for the window)
        print(window?.windowLevel)          // rawValue = 0.0 (the positioning of windows relative to each other)
        print(window?.screen)               // UIScreen on which the window is displayed (gives dimensions)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        print(#function)
        print(window?.isKeyWindow)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print(#function)
        print(window?.isKeyWindow)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print(#function)
        print(window?.isKeyWindow)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        // Step 2
        // Here is where the window object becomes the key window for the application
        // only one window at a time may be the key window
        // the key window receives keyboard and other non-touch related events
        print(#function)
        print(window?.isKeyWindow)
        print(window?.rootViewController)
        print(window?.windowLevel)
        print(window?.screen)
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        print(#function)
        print(window?.isKeyWindow)
    }


}


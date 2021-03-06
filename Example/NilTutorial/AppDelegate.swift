//
//  AppDelegate.swift
//  NilTutorial
//
//  Created by nilc.nolan@gmail.com on 09/13/2017.
//  Copyright (c) 2017 nilc.nolan@gmail.com. All rights reserved.
//

import UIKit
import NilTutorial

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
       
        let tutorialVC = NilTutorialViewController(imagesSet: [#imageLiteral(resourceName: "Invoker_1"),#imageLiteral(resourceName: "Invoker_2"),#imageLiteral(resourceName: "Invoker_3"),#imageLiteral(resourceName: "Invoker_1"),#imageLiteral(resourceName: "Invoker_3")]) {
            // Add action afer skip button pressed here
            print("Skip Button Pressed!!!")
            let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.window?.rootViewController = mainVC
        }
        tutorialVC.enableAutoScroll()
        tutorialVC.setAutoScrollTime(seconds: 2.0)
        self.window?.rootViewController = tutorialVC
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


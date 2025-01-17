//
//  AppDelegate.swift
//  Rightmind
//
//  Created by Jerry LaGore on 8/6/19.
//  Copyright © 2019 Jerry LaGore. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let background_color = UIColor(red: 119/255, green: 196/255, blue: 74/255, alpha: 1)
    let navigationBar = UINavigationBar()
    let coloredNavBarAppearance = UINavigationBarAppearance()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let initVC = TabBarViewController()
        window?.rootViewController = initVC
        
        coloredNavBarAppearance.configureWithOpaqueBackground()
        coloredNavBarAppearance.backgroundColor = background_color
        coloredNavBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredNavBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationBar.barTintColor = UIColor.white
        UINavigationBar.appearance().standardAppearance = coloredNavBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavBarAppearance
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        FirebaseApp.configure()
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


    
}


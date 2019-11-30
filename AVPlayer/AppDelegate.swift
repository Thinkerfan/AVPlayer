//
//  AppDelegate.swift
//  AVPlayer
//
//  Created by Tony on 2017/7/20.
//  Copyright © 2017年 Tony. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rooterVC
        window?.makeKeyAndVisible()
        return true
    }
    
    var rooterVC:UIViewController{
        let vv_vcTab = UITabBarController()
        
        let vv_tab1 = ViewController()
        vv_tab1.title = "List"
        vv_tab1.tabBarItem = UITabBarItem(title: "List", image: UIImage(named: "aa_tab"), selectedImage:UIImage(named: "aa_tabSel"))
        let nav1 = UINavigationController(rootViewController: vv_tab1)

        let vv_tab2 = TestController()
        vv_tab2.title = "Single"
        vv_tab2.tabBarItem = UITabBarItem(title: "Single", image: nil, selectedImage:nil)
        let nav2 = UINavigationController(rootViewController: vv_tab2)
        vv_vcTab.viewControllers = [nav1,nav2]
        return vv_vcTab
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


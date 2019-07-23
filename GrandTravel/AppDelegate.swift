//
//  AppDelegate.swift
//  GrandTravel
//
//  Created by Tyler Liu on 5/20/19.
//  Copyright © 2019 CHUNTAO LIU. All rights reserved.
//

import UIKit
import Dimelo
import Keys

public var sharedDimelo: Dimelo = Dimelo.sharedInstance()

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, DimeloDelegate {
    func dimeloDisplayChatViewController(_ dimelo: Dimelo!) {
        
    }
    

    var window: UIWindow?
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        sharedDimelo.deviceToken = deviceToken
    }

    func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [AnyHashable : Any], withResponseInfo responseInfo: [AnyHashable : Any], completionHandler: @escaping () -> Void) {
        sharedDimelo.handleRemoteNotification(withIdentifier: identifier, responseInfo: responseInfo)
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        sharedDimelo.consumeReceivedRemoteNotification(userInfo)
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let keys = GrandTravelKeys()
//        let dimelo = Dimelo.sharedInstance()!
        sharedDimelo = Dimelo(apiSecret: keys.dimeloApiSecret, domainName: keys.dimeloDomainName, delegate: self)
//        Dimelo.init(apiSecret: keys.dimeloApiSecret, domainName: keys.dimeloDomainName, delegate: self)
        sharedDimelo.developmentAPNS = true
        sharedDimelo.userIdentifier = UIDevice.current.identifierForVendor?.uuidString
        sharedDimelo.authenticationInfo = ["bankBranch": "Test-5678"]
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


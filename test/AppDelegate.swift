//
//  AppDelegate.swift
//  test
//
//  Created by Сергей Вихляев on 20.05.2020.
//  Copyright © 2020 Сергей Вихляев. All rights reserved.
//

// ляляля 
import UIKit

class Some: Hashable {
    static func == (lhs: Some, rhs: Some) -> Bool {
        return lhs.value == rhs.value
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(value)
    }
    
    var value: Int = 1
}

class None: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        let object = None()
        return object
    }
}


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let dict: [Some: Array<Any>] = [:]
    let dict2: [None: Any] = [:]

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


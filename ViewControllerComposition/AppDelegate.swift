//
//  AppDelegate.swift
//  ViewControllerComposition
//
//  Created by ThinhLe on 3/25/20.
//  Copyright © 2020 ThinhLe. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if let views = (window?.rootViewController as? UITabBarController)?.viewControllers, let single = views[0] as? SinglePlayerViewController,
            let multi = views[1] as? MultiPlayerViewController, let timed = views[2] as? TimedMultiPlayerViewController {
            
            _ = single.view
            _ = multi.view
            _ = timed.view
            
            single.player?.name = "Test"
            multi.players?.playerOne?.name = "Bình"
            multi.players?.playerTwo?.name = "Thịnh"
            timed.players?.playerOne?.name = "Bình 2"
            timed.players?.playerTwo?.name = "Thịnh 2"
        }
        return true
    }
}


//
//  AppDelegate.swift
//  Parshot
//
//  Created by hazem on 9/3/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
       
        let layout = UICollectionViewFlowLayout()
        let featuredAppsController = FirstMainPageController (collectionViewLayout:layout )
        window?.rootViewController = UINavigationController(rootViewController: featuredAppsController)

        return true
    }

    
    
}


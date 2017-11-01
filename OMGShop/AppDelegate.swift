//
//  AppDelegate.swift
//  OMGShop
//
//  Created by Mederic Petit on 19/10/2560 BE.
//  Copyright © 2560 Mederic Petit. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        _ = OMGShopManager.shared
        self.loadRootView()
        return true
    }

    func loadRootView() {
        switch SessionManager.shared.state {
        case .logout:
            self.window?.rootViewController = Storyboard.login.storyboard.instantiateInitialViewController()
        case .loading:
            self.window?.rootViewController = Storyboard.loading.storyboard.instantiateInitialViewController()
        case .login:
            self.window?.rootViewController = Storyboard.product.storyboard.instantiateInitialViewController()
        }
    }

}

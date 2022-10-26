//
//  AppDelegate.swift
//  calorie_track
//
//  Created by Ahmet Dursun Avcı on 20.10.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            // Override point for customization after application launch.
            self.window = UIWindow(frame: UIScreen.main.bounds)
            let viewController = HomeViewController().makeHome()
            //viewController.viewModel = HomeViewModel()
            let navigationController = UINavigationController(rootViewController: viewController)
            self.window?.rootViewController = navigationController
            self.window?.makeKeyAndVisible()
            return true
    }


}


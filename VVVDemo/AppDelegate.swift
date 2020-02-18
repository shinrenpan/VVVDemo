//
// Copyright (c) 2020 shinren.pan@gmail.com All rights reserved.
//

import UIKit

@UIApplicationMain class AppDelegate: UIResponder {}

extension AppDelegate: UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {

        UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}

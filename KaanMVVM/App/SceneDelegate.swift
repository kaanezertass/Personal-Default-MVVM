//
//  SceneDelegate.swift
//  KaanMVVM
//
//  Created by Kaan Ezerrtaş on 22.11.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
      
        guard let Window = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: Window)
        let mainController = KaanHomeController()
        let navigationController = UINavigationController(rootViewController: mainController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
        
    }

}


//
//  SceneDelegate.swift
//  tabbar_project
//
//  Created by Алексей  Шевченко on 19.10.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        let tabBarController = UITabBarController()
        
        let tableVC = TableViewController()
        let collectionVC = CollectionViewController()

        tableVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        collectionVC.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 1)

        tabBarController.viewControllers = [UINavigationController(rootViewController: tableVC),
                                            UINavigationController(rootViewController: collectionVC)]

        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}



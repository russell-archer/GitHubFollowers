//
//  SceneDelegate.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 05/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        
        guard let windowScene = (scene as? UIWindowScene) else { return }  // Get the window scene
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)  // Create a window
        guard window != nil else { return }
        
        window?.windowScene = windowScene  // Assign the window scene to the window's window scene
        window?.rootViewController = createTabBar() // Set the root view controller 
        window?.makeKeyAndVisible()  // Make the window visible
    }
    
    func createTabBar() -> UITabBarController {
        // Create the tab bar controller and populate with an array of view controllers (the nav controllers)
        let tabbar = UITabBarController()
        
        UITabBar.appearance().tintColor = .systemGreen  // Set the global color for tab bars
        configureNavigationBar()  // Set the global color for nav    bars
        
        tabbar.viewControllers = [createSearchNavigationController(), createFavoritesNavigationController()]
        
        return tabbar
    }

    func createSearchNavigationController() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFavoritesNavigationController() -> UINavigationController {
        let favVC = FavoritesListVC()
        favVC.title = "Favorites"
        favVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favVC)
    }
    
    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
}


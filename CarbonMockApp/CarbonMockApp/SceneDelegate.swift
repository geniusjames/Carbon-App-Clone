//
//  SceneDelegate.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 28/11/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
  
        guard let windowScene = (scene as? UIWindowScene) else { return }
      
        setUpAppCoordinator(for: windowScene)
 
    }
    
    func setUpAppCoordinator(for scene: UIWindowScene){
        let appWindow = UIWindow(frame: scene.coordinateSpace.bounds)
        appWindow.windowScene = scene
        self.window = appWindow
        let coordinator = AppCoordinator(window: appWindow)
        coordinator.start()
    }

    
}


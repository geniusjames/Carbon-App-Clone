//
//  AppCoordinator.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 04/12/2021.
//

import Foundation
import UIKit

class AppCoordinator: createViewDelegate{
    let navigation = UINavigationController()
    func begin(view: String) {
        if view == "register"{
            setUpScreen()

        }
        if view == "login"{
            loginScreen()
        }
        if view == "profile"{
            profileScreen()
        }
    }
    
    let window: UIWindow
    init(window: UIWindow){
        self.window = window
    }
    func start(){
        onBoardingScreen()
    }
    func onBoardingScreen(){
        
        let vc = OnBoardingViewController()
        navigation.pushViewController(vc, animated: true)
//        let navigation = UINavigationController(rootViewController: vc)
        vc.delegate = self
//        self.window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        self.window.backgroundColor = .white
        self.window.rootViewController = navigation
        self.window.makeKeyAndVisible()
    }
    func loginScreen(){
        let vc = LogInViewController()
        navigation.pushViewController(vc, animated: true)
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
    func setUpScreen(){
        let vc = AccountSetUp()
        vc.delegate = self
        navigation.pushViewController(vc, animated: true)
//        navigation.viewControllers = [vc]
        
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
    func profileScreen(){
        
        let vc = ProfileViewController()
        navigation.pushViewController(vc, animated: true)
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
    func makeViewController(controller: UIViewController) -> UIViewController{
        return UIViewController()
    }
}

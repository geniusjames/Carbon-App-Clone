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
    let onBoardedNavigation = UINavigationController()
    var isOnBoarded: Bool = false
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
        isOnBoarded = UserDefaults.standard.bool(forKey: "onboarded")
        if !isOnBoarded{
            onBoardingScreen()

        }else{
            profileScreen()
        }
            
    }
    func onBoardingScreen(){
        
        let vc = OnBoardingViewController()
        navigation.pushViewController(vc, animated: true)
        vc.delegate = self
        self.window.backgroundColor = .white
        self.window.rootViewController = navigation
        self.window.makeKeyAndVisible()
    }
    func loginScreen(){
        let vc = LogInViewController()
        vc.delegate = self
        navigation.pushViewController(vc, animated: true)
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
    func setUpScreen(){
        let vc = AccountSetUpViewController()
        vc.delegate = self
        navigation.pushViewController(vc, animated: true)
//        navigation.viewControllers = [vc]
        
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
    func profileScreen(){
        
        let vc = ProfileViewController()
        onBoardedNavigation.pushViewController(vc, animated: true)
        vc.delegate = self
        window.rootViewController = onBoardedNavigation
        window.makeKeyAndVisible()
    }
}


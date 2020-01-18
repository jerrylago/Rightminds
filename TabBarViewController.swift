//
//  TabBarViewController.swift
//  Rightmind
//
//  Created by Jerry LaGore on 1/18/20.
//  Copyright © 2020 Jerry LaGore. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let homeVC = HomeViewController()
    private let newsVC = NewsViewController()
    private let settingsVC = SettingsViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [createControllers(title: "Home", imageName: "home", vc: homeVC),
                           createControllers(title: "News", imageName: "learn", vc: newsVC),
                           createControllers(title: "Settings", imageName: "quiz", vc: settingsVC)
        ]
    }
    
    private func createControllers(title: String, imageName: String, vc: UIViewController) -> UINavigationController {
        
        let recentVC = UINavigationController(rootViewController: vc)
        recentVC.tabBarItem.title = title
        recentVC.tabBarItem.image = UIImage(named: imageName)
        return recentVC
    }

}

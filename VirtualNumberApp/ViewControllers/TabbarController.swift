//
//  DashboardTabBarController.swift
//  VirtualNumberApp
//
//  Created by Furkan BAŞOĞLU on 22.11.2023.
//

import UIKit
import SnapKit

class DashboardTabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let item1 = HomeViewController()
        let icon1 = UITabBarItem(title: "", image: UIImage(named: "home"), selectedImage: UIImage(named: ""))
        item1.tabBarItem = icon1
        let item2 = InfoViewController()
        let icon2 = UITabBarItem(title: "", image: UIImage(named: "sim"), selectedImage: UIImage(named: ""))
        item2.tabBarItem = icon2
        let item3 = CallViewController()
        let icon3 = UITabBarItem(title: "", image: UIImage(named: "call"), selectedImage: UIImage(named: ""))
        item3.tabBarItem = icon3
        let item4 = ChatViewController()
        let icon4 = UITabBarItem(title: "", image: UIImage(named: "more"), selectedImage: UIImage(named: ""))
        item4.tabBarItem = icon4
        let item5 = NoteViewController()
        let icon5 = UITabBarItem(title: "", image: UIImage(named: "note"), selectedImage: UIImage(named: ""))
        item5.tabBarItem = icon5
        let controllers = [item1, item2, item3, item4, item5]
        self.viewControllers = controllers

    }

    //Delegate methods
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//        print("Should select viewController: \(viewController.title ?? "") ?")
        return true;
    }
}

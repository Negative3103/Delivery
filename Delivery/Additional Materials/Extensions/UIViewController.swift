//
//  UIViewController.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

extension UIViewController {
    func resetTabBar() {
        let window = UIApplication.shared.windows[0] as UIWindow
        let tabBar = TabBarController()
        if let index = self.tabBarController?.selectedIndex {
            tabBar.selectedIndex = index
        }
        window.rootViewController = tabBar
    }
}

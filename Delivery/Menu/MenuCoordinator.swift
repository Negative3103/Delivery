//
//  MenuCoordinator.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class MenuCoordinator: Coordinator {
    
    internal var childCoordinators = [Coordinator]()
    internal var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    internal func start() {
        let vc = MenuViewController()
        vc.tabBarItem = UITabBarItem(title: "Меню", image: .appImage(.menu), tag: 1)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}

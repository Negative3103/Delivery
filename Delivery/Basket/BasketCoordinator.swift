//
//  BasketCoordinator.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class BasketCoordinator: Coordinator {
    
    internal var childCoordinators = [Coordinator]()
    internal var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    internal func start() {
        let vc = BasketViewController()
        vc.tabBarItem = UITabBarItem(title: "Корзина", image: .appImage(.basket), tag: 4)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}

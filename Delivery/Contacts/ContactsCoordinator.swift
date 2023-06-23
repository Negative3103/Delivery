//
//  ContactsCoordinator.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class ContactsCoordinator: Coordinator {
    
    internal var childCoordinators = [Coordinator]()
    internal var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    internal func start() {
        let vc = ContactsViewController()
        vc.tabBarItem = UITabBarItem(title: "Контакты", image: .appImage(.local), tag: 2)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}

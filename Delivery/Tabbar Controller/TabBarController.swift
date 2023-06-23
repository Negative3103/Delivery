//
//  TabBarController.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//


import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: - Attributes
    internal let menuCoordinator = MenuCoordinator(navigationController: UINavigationController())
    internal var contactsCoordinator = ContactsCoordinator(navigationController: UINavigationController())
    internal var profileCoordinator = ProfileCoordinator(navigationController: UINavigationController())
    internal var basketCoordinator = BasketCoordinator(navigationController: UINavigationController())
    
    // MARK: - Lifecycle
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        createControllers()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createControllers()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appearanceSettings()
    }
}

// MARK: - Other funcs
extension TabBarController {
    private func createControllers() {
        menuCoordinator.start()
        contactsCoordinator.start()
        profileCoordinator.start()
        basketCoordinator.start()
        
        viewControllers = [menuCoordinator.navigationController, contactsCoordinator.navigationController, profileCoordinator.navigationController, basketCoordinator.navigationController]
    }
    
    private func appearanceSettings() {
        tabBar.tintColor = .appColor(.pink)
        tabBar.isTranslucent = true
        tabBar.backgroundColor = UIColor.appColor(.white)
        tabBar.barTintColor = UIColor.appColor(.white)
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -3)
        tabBar.layer.shadowRadius = 2
        tabBar.layer.shadowColor = UIColor.appColor(.white).cgColor
        tabBar.layer.shadowOpacity = 0.15
    }
}


//
//  MenuViewController.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class MenuViewController: UIViewController, ViewSpecificController {
    
    //MARK: - Root View
    typealias RootView = MenuView
    
    //MARK: - Services
    internal var coordinator: MenuCoordinator?
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        appearanceSettings()
    }
}

//MARK: - Other funcs
extension MenuViewController {
    private func appearanceSettings() {
        title = "Меню"
        navigationController?.navigationBar.installBlurEffect()
    }
}

//
//  BasketViewController.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class BasketViewController: UIViewController, ViewSpecificController {
    
    //MARK: - Root View
    typealias RootView = BasketView
    
    //MARK: - Resources
    internal var coordinator: BasketCoordinator?
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        appearanceSettings()
    }
}

//MARK: - Other funcs
extension BasketViewController {
    private func appearanceSettings() {
        title = "Корзина"
        navigationController?.navigationBar.installBlurEffect()
    }
}

//
//  ContactsViewController.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class ContactsViewController: UIViewController, ViewSpecificController {
    
    //MARK: - Root View
    typealias RootView = ContactsView
    
    //MARK: - Services
    internal var coordinator: ContactsCoordinator?
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        appearanceSettings()
    }
}

//MARK: - Other funcs
extension ContactsViewController {
    private func appearanceSettings() {
        title = "Контакты"
        navigationController?.navigationBar.installBlurEffect()
    }
}

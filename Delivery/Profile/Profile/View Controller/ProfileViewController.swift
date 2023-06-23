//
//  ProfileViewController.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class ProfileViewController: UIViewController, ViewSpecificController {
    
    //MARK: - Root View
    typealias RootView = ProfileView
    
    //MARK: - Resources
    internal var coordinator: ProfileCoordinator?
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        appearanceSettings()
    }
}

//MARK: - Other funcs
extension ProfileViewController {
    private func appearanceSettings() {
        title = "Профиль"
        navigationController?.navigationBar.installBlurEffect()
    }
}

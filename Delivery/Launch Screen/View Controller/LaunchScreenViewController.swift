//
//  LaunchScreenViewController.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 22/06/23.
//

import UIKit

final class LaunchScreenViewController: UIViewController, ViewSpecificController {
    
    //MARK: - Root View
    typealias RootView = LaunchScreenView
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            self.resetTabBar()
        }
    }
}

extension LaunchScreenViewController {
    private func appearanceSettings() {}
}

//
//  ViewSpecificController.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 22/06/23.
//

import UIKit

protocol ViewSpecificController {
    associatedtype RootView: UIView
}

extension ViewSpecificController where Self: UIViewController {
    func view() -> RootView {
        return self.view as! RootView
    }
}

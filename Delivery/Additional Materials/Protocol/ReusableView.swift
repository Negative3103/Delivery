//
//  ReusableView.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

protocol ReusableView: class {
    static var defaultReuseIdentifier: String { get }
}

extension ReusableView where Self: UIView {
    static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}

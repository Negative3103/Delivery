//
//  UIColor.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 22/06/23.
//

import UIKit

extension UIColor {
    static func appColor(_ name: AssetsColor) -> UIColor {
        return UIColor(named: name.rawValue) ?? .white
    }
}

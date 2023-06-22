//
//  UIImage.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 22/06/23.
//

import UIKit

extension UIImage {
    static func appImage(_ name: AssetsImage) -> UIImage {
        return UIImage(named: name.rawValue) ?? UIImage()
    }
}

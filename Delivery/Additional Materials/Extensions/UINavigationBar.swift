//
//  UINavigationBar.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

extension UINavigationBar {
    func installBlurEffect() {
        barStyle = .default
        barTintColor = UIColor.appColor(.mainBackground)
        backgroundColor = UIColor.appColor(.mainBackground)
        titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.appColor(.black)]
        
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowRadius = 3
        layer.shadowColor = UIColor.appColor(.shadowColor).cgColor
        layer.shadowOpacity = 0.10
        
        let backButton = BackBarButtonItem()
        backButton.title = ""
        backButton.tintColor = UIColor.appColor(.black)
        topItem?.backBarButtonItem = backButton
    }
}

class BackBarButtonItem: UIBarButtonItem {
    @available(iOS 14.0, *)
    override var menu: UIMenu? {
        set {}
        get {
            return super.menu
        }
    }
}

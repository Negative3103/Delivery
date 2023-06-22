//
//  File.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 22/06/23.
//

import UIKit

class CustomView: UIView {

    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackgroundColor()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupBackgroundColor()
    }
    
    // MARK: - UI Setup
    func setupBackgroundColor() {
        backgroundColor = UIColor.appColor(.white)
    }
}

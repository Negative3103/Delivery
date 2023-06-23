//
//  UICollectionView.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

extension UICollectionView {
    func itemSize(height: CGFloat, additionalWidth: CGFloat, text: String? = nil, font: UIFont? = nil) -> CGSize {
        guard let text = text , let font = font else {
            return CGSize.zero
        }
        let textWidth = text.width(withConstrainedHeight: height, font: font)
        let width = additionalWidth + textWidth
        return CGSize(width: width, height: height)
    }
}

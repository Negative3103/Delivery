//
//  CategoriesCollectionViewCell.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class CategoriesCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK: - Attributes
    var item: CategoriesModel? {
        didSet {
            guard let item = item else { return }
            
            if let title = item.title {
                titleLabel.text = title
            }
        }
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected == true {
                backgroundColor = UIColor.appColor(.pink).withAlphaComponent(0.4)
                titleLabel.textColor = .appColor(.pink)
                titleLabel.font = UIFont.boldSystemFont(ofSize: 13)
            } else {
                backgroundColor = .clear
                titleLabel.textColor = .appColor(.pink).withAlphaComponent(0.4)
                titleLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
            }
        }
    }
    
    //MARK: - Lifecycles
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 20
        self.layer.cornerCurve = .continuous
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.appColor(.pink).withAlphaComponent(0.4).cgColor
    }
}

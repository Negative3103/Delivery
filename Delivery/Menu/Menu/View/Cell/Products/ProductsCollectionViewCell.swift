//
//  ProductsCollectionViewCell.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class ProductsCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var priceButton: UIButton!
    @IBOutlet weak var priceView: UIView!
    
    //MARK: - Attributes
    var item: ProductsModel? {
        didSet {
            guard let item = item else { return }
            
            if let image = item.image {
                imageView.image = UIImage(named: image)
            }
            
            if let title = item.title {
                titleLabel.text = title
            }
            
            if let subtitle = item.subtitle {
                subtitleLabel.text = subtitle
            }
            
            if let price = item.price {
                priceButton.setTitle(price, for: .normal)
            }
        }
    }
    
    //MARK: - Lifecycles
    override func layoutSubviews() {
        super.layoutSubviews()
        priceView.layer.cornerRadius = 6
        priceView.layer.borderWidth = 1
        priceView.layer.borderColor = UIColor.appColor(.pink).cgColor
    }
}

//
//  MenuView.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class MenuView: CustomView {
    
    //MARK: - Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var productsHeight: NSLayoutConstraint!
    @IBOutlet weak var bannerCollectionView: UICollectionView! {
        didSet{
            bannerCollectionView.register(UINib(nibName: BannerCollectionViewCell.defaultReuseIdentifier, bundle: nil), forCellWithReuseIdentifier: BannerCollectionViewCell.defaultReuseIdentifier)
        }
    }
    @IBOutlet weak var categoriesCollectionView: UICollectionView! {
        didSet {
            categoriesCollectionView.register(UINib(nibName: CategoriesCollectionViewCell.defaultReuseIdentifier, bundle: nil), forCellWithReuseIdentifier: CategoriesCollectionViewCell.defaultReuseIdentifier)
        }
    }
    @IBOutlet weak var productsCollectionView: UICollectionView! {
        didSet {
            productsCollectionView.register(UINib(nibName: ProductsCollectionViewCell.defaultReuseIdentifier, bundle: nil), forCellWithReuseIdentifier: ProductsCollectionViewCell.defaultReuseIdentifier)
            productsCollectionView.clipsToBounds = true
            productsCollectionView.layer.cornerRadius = 10
            productsCollectionView.layer.cornerCurve = .continuous
            productsCollectionView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        }
    }
}

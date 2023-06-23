//
//  ProductsDataProvider.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//


import UIKit

final class ProductsDataProvider: NSObject , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Outlets
    weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }
    
    //MARK: - Attributes
    weak var viewController: UIViewController?
    var items = [ProductsModel(image: ProductsConstant.pizzaImage.rawValue,
                               title: ProductsConstant.pizzaTitle.rawValue,
                               subtitle: ProductsConstant.pizzaSubtitle.rawValue,
                               price: ProductsConstant.pizzaPrice.rawValue),
                 ProductsModel(image: ProductsConstant.pizza2Image.rawValue,
                               title: ProductsConstant.pizza2Title.rawValue,
                               subtitle: ProductsConstant.pizza2Subtitle.rawValue,
                               price: ProductsConstant.pizzaPrice.rawValue),
                 ProductsModel(image: ProductsConstant.pizza3Image.rawValue,
                               title: ProductsConstant.pizza3Title.rawValue,
                               subtitle: ProductsConstant.pizza3Subtitle.rawValue,
                               price: ProductsConstant.pizzaPrice.rawValue),
                 ProductsModel(image: ProductsConstant.pizza3Image.rawValue,
                               title: ProductsConstant.pizza3Title.rawValue,
                               subtitle: ProductsConstant.pizza3Subtitle.rawValue,
                               price: ProductsConstant.pizzaPrice.rawValue)
    ]
    
    //MARK: - Lifecycles
    init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }
    
    //MARK: - DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductsCollectionViewCell.defaultReuseIdentifier, for: indexPath) as? ProductsCollectionViewCell else { return UICollectionViewCell() }
        cell.item = items[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height / CGFloat(items.count))
    }
}

//
//  CategoriesDataProvider.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class CategoriesDataProvider: NSObject , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Outlets
    weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }
    
    //MARK: - Attributes
    weak var viewController: UIViewController?
    var items = [CategoriesModel(title: CategoriesConstant.pizza.rawValue),
                CategoriesModel(title: CategoriesConstant.combo.rawValue),
                CategoriesModel(title: CategoriesConstant.deserts.rawValue),
                CategoriesModel(title: CategoriesConstant.waters.rawValue),
                CategoriesModel(title: CategoriesConstant.burgers.rawValue),
                CategoriesModel(title: CategoriesConstant.hotDogs.rawValue)]
    
    //MARK: - Lifecycles
    init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }
    
    //MARK: - DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let vc = viewController as? MenuViewController else { return UICollectionViewCell() }
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.defaultReuseIdentifier, for: indexPath) as? CategoriesCollectionViewCell else { return UICollectionViewCell() }
        cell.item = items[indexPath.item]
        cell.isSelected = items[indexPath.item].title == vc.selectedCategory?.title
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 3.7, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = viewController as? MenuViewController else { return }
        vc.selectedCategory = items[indexPath.item]

    }
}

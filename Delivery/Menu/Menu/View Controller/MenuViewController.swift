//
//  MenuViewController.swift
//  Delivery
//
//  Created by Хасан Давронбеков on 23/06/23.
//

import UIKit

final class MenuViewController: UIViewController, ViewSpecificController {
    
    //MARK: - Root View
    typealias RootView = MenuView
    
    //MARK: - Services
    internal var coordinator: MenuCoordinator?
    
    //MARK: - Attributes
    private var bannerDataProvider = BannerDataProvider()
    private var categoriesDataProvider = CategoriesDataProvider()
    private var productsDataProvider = ProductsDataProvider()
    var selectedCategory: CategoriesModel?
    var topConstraint: NSLayoutConstraint!
    var isCollectionViewPinned = true
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        appearanceSettings()
        setupNavBar()
    }
}

//MARK: - Other funcs
extension MenuViewController: UIScrollViewDelegate {
    private func appearanceSettings() {
        title = "Меню"
        view().scrollView.delegate = self
        navigationController?.navigationBar.installBlurEffect()
        
        bannerDataProvider.viewController = self
        categoriesDataProvider.viewController = self
        productsDataProvider.viewController = self
        
        bannerDataProvider.collectionView = view().bannerCollectionView
        categoriesDataProvider.collectionView = view().categoriesCollectionView
        productsDataProvider.collectionView = view().productsCollectionView
        
        view().productsHeight.constant = 160 * CGFloat(productsDataProvider.items.count)
        topConstraint = view().categoriesCollectionView.topAnchor.constraint(equalTo: view.topAnchor)

        if let flowLayout = view().categoriesCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
            flowLayout.sectionHeadersPinToVisibleBounds = true
        }
        
        DispatchQueue.main.async {
            self.view().categoriesCollectionView.selectItem(at: IndexPath(item: 0, section: 0), animated: false, scrollPosition: .centeredHorizontally)
        }
    }
    
    private func setupNavBar() {
        let leftButton = UIButton(type: .system)
        leftButton.setImage(UIImage.appImage(.arrowDown), for: .normal)
        leftButton.setTitle("Москва", for: .normal)
        leftButton.semanticContentAttribute = .forceRightToLeft
        leftButton.tintColor = UIColor.appColor(.customBlack)
        leftButton.sizeToFit()
        leftButton.isUserInteractionEnabled = false
        let leftBarButton = UIBarButtonItem(customView: leftButton)
        navigationItem.leftBarButtonItem = leftBarButton
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let scrollOffset = scrollView.contentOffset.y
        let topOffset = view.safeAreaInsets.top + (navigationController?.navigationBar.frame.height ?? 0)
        if scrollOffset > -topOffset && isCollectionViewPinned {
            topConstraint.constant = -scrollOffset - topOffset
            isCollectionViewPinned = false
        } else if scrollOffset <= -topOffset && !isCollectionViewPinned {
            topConstraint.constant = -topOffset
            isCollectionViewPinned = true
        }

    }
}

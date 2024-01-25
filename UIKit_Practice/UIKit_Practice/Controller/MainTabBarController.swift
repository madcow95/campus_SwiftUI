//
//  MainTabBarController.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/1/25.
//

import UIKit

class MainTabBarController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        collectionView.register(MainTabBarView.self, forCellWithReuseIdentifier: "MainTabBarView")
    }
    
    func tabBar(unSelected: UIImage, selected: UIImage, view: UIViewController, title: String) -> UINavigationController {
        let nav = UINavigationController(rootViewController: view)
        
//        nav.tabBarItem
        
        return nav
    }
}

extension MainTabBarController {
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainTabBarView", for: indexPath) as! MainTabBarView
        
        return cell
    }
}

extension MainTabBarController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}

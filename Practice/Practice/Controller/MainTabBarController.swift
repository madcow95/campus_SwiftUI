//
//  MainTabBarController.swift
//  Practice
//
//  Created by MadCow on 2024/1/19.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTabBar()
    }
    
    func configureTabBar() {
        let layout = UICollectionViewFlowLayout()
        
        let home = tabBar(unSelected: UIImage(systemName: "house")!, selected: UIImage(systemName: "house.fill")!, view: HomeController(collectionViewLayout: layout), title: "홈")
        let profile = tabBar(unSelected: UIImage(systemName: "person")!, selected: UIImage(systemName: "person.fill")!, view: ProfileController(collectionViewLayout: layout), title: "프로필")
        
        viewControllers = [home, profile]
    }
    
    func tabBar(unSelected: UIImage, selected: UIImage, view: UIViewController, title: String) -> UINavigationController {
        let navigation = UINavigationController(rootViewController: view)
        
        navigation.tabBarItem.image = unSelected
        navigation.tabBarItem.selectedImage = selected
        navigation.tabBarItem.title = title
        navigation.navigationBar.tintColor = .black
        
        return navigation
    }
}

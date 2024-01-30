//
//  SettingController.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/1/25.
//

import UIKit

class SettingController: UIViewController {
    
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationItem.title = "Fisrt View For Menu"
        
        let label = UILabel()
        label.text = "First View Label"
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
//        collectionView.delegate = self
//        collectionView.dataSource = self
    }
    
    /*
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SettingView", for: indexPath) as? SettingView else {
            return UICollectionViewCell()
        }
        
        return cell
    }
    */
}

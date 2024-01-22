//
//  ProfileController.swift
//  Practice
//
//  Created by MadCow on 2024/1/19.
//

import UIKit

class ProfileController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        collectionView.backgroundColor = .cyan
        collectionView.register(ProfileCell.self, forCellWithReuseIdentifier: "ProfileCell")
    }
}

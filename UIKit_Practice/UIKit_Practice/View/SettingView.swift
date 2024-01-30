//
//  SettingView.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/1/28.
//

import UIKit

class SettingView: UICollectionViewCell {
    
    func configure() {
        let label = UILabel()
        label.text = "Test Label"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}

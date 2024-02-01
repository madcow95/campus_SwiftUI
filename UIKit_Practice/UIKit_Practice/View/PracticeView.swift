//
//  SettingView.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/1/28.
//

import UIKit

class PracticeView: UICollectionViewCell {
    
    let testLabel: UILabel = {
        let label = UILabel()
        label.text = "Label"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        
        return label
    }()
    
    let testTable: UITableView = {
        let table = UITableView()
        
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(testLabel)
        
        testLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        testLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        testLabel.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

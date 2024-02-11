//
//  SettingTableCell.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/2/11.
//

import UIKit

class SettingTableCell: UITableViewCell {
    
    var tableImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.font = .systemFont(ofSize: 30, weight: .bold)
        
        return label
    }()
    
    let subscriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(tableImage)
        tableImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        tableImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        
        contentView.addSubview(titleLabel)
        titleLabel.textColor = .black
        titleLabel.leadingAnchor.constraint(equalTo: tableImage.trailingAnchor, constant: 15).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

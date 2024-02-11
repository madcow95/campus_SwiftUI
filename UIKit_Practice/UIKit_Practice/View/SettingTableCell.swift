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
        image.contentMode = .scaleAspectFit
//        image.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(tableImage)
        tableImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        tableImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        contentView.addSubview(titleLabel)
        titleLabel.leadingAnchor.constraint(equalTo: tableImage.trailingAnchor, constant: 15).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: tableImage.centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

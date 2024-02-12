//
//  MemoTable.swift
//  SimpleMemo
//
//  Created by MadCow on 2024/2/12.
//

import UIKit

class MemoTable: UITableViewCell {
    
    let workLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let countLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(workLabel)
        workLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        workLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        contentView.addSubview(countLabel)
        countLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        countLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

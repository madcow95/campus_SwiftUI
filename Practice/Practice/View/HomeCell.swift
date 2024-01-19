//
//  HomeCell.swift
//  Practice
//
//  Created by MadCow on 2024/1/19.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    private let imageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.isUserInteractionEnabled = true
        img.image = UIImage(systemName: "person")
        return img
    }()
    
    private let testImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.isUserInteractionEnabled = true
        img.image = UIImage(systemName: "person.fill")
        return img
    }()
    
    private let nameLabel: UILabel = {
        let name = UILabel()
        name.text = "Test Label"
        name.font = UIFont.boldSystemFont(ofSize: 13)
        name.textColor = .black
        return name
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        imageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 30).isActive = true
        
        addSubview(testImage)
        testImage.translatesAutoresizingMaskIntoConstraints = false
        testImage.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10).isActive = true
        testImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        testImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        testImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 30).isActive = true
        
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: testImage.bottomAnchor, constant: 10).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 30).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

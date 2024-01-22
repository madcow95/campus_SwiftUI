//
//  ProfileCell.swift
//  Practice
//
//  Created by MadCow on 2024/1/19.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    private let idTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.textColor = .white
        tf.placeholder = "idTextField"
        tf.layer.cornerRadius = 10
        tf.keyboardAppearance = .dark
        tf.keyboardType = .emailAddress
        return tf
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(idTextField)
        idTextField.translatesAutoresizingMaskIntoConstraints = false
        idTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        idTextField.widthAnchor.constraint(equalToConstant: 40).isActive = true
        idTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 30).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

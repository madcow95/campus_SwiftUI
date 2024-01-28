//
//  ViewController.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/1/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let safeArea = view.safeAreaLayoutGuide
        
        let testLabel = UILabel()
        testLabel.text = "Test Label"
        testLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(testLabel)
        testLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 30).isActive = true
        testLabel.leftAnchor.constraint(equalTo: safeArea.leftAnchor, constant: 30).isActive = true
        
        let testTextField = UITextField()
        testTextField.placeholder = "Test PlaceHolder"
        testTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(testTextField)
        testTextField.topAnchor.constraint(equalToSystemSpacingBelow: testLabel.bottomAnchor, multiplier: 5).isActive = true
        testTextField.leftAnchor.constraint(equalTo: testLabel.leftAnchor).isActive = true
    }
}

//
//  ViewController.swift
//  Practice
//
//  Created by MadCow on 2024/1/19.
//

import UIKit

class ViewController: UIViewController {
    
    let textField: UITextField = {
        let tf = UITextField()
        
        return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        view.backgroundColor = .yellow
    }
}


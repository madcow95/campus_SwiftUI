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
        
//        view.addSubview(SettingController().view)
    }
}

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First View"
        
        let nextPageButton = UIButton(type: .system)
        nextPageButton.setTitle("To Next Page", for: .normal)
        nextPageButton.setTitleColor(.white, for: .normal)
        nextPageButton.backgroundColor = .systemBlue
        nextPageButton.layer.cornerRadius = 5
        nextPageButton.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        view.addSubview(nextPageButton)
        
        nextPageButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nextPageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextPageButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func nextPage() {
        print("Next Page Tapped!")
        let nextPage = SecondPageController()
        navigationController?.pushViewController(nextPage, animated: true)
    }
}

class SecondPageController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second View"
        
        let beforePageButton = UIButton(type: .system)
        beforePageButton.setTitle("To Before Page", for: .normal)
        beforePageButton.backgroundColor = .systemBlue
        beforePageButton.layer.cornerRadius = 5
        beforePageButton.addTarget(self, action: #selector(beforePage), for: .touchUpInside)
        view.addSubview(beforePageButton)
        
        beforePageButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            beforePageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            beforePageButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func beforePage() {
        print("Before Page Tapped!")
//        navigationController?.popViewController(animated: true)
    }
}

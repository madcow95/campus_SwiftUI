//
//  TestView.swift
//  SimpleMemo
//
//  Created by MadCow on 2024/2/14.
//

import UIKit

 {
    
    let tLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TEST"
        label.textColor = UIColor.red
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tLabel)
        tLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

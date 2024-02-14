//
//  MemoDetailView.swift
//  SimpleMemo
//
//  Created by MadCow on 2024/2/14.
//

import UIKit

class MemoDetailView: UIViewController {
    
    let memoTitle: UITextField = {
        let title = UITextField()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "TEST"
        title.textColor = UIColor.red
        
        return title
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.addSubview(memoTitle)
        memoTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        memoTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

//
//  SettingView.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/2/1.
//

import UIKit

class SettingView2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    let settings: [SettingModel] = [SettingModel(image: UIImage(systemName: "person")!, title: "태양")]
//    let settings: [[SettingModel]] = [
//        [SettingModel(image: UIImage(systemName: "person")!, title: "태양")]
//    ]
    
    private let testTable: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    func configure() {
        view.backgroundColor = .white
        navigationItem.title = "Test Title"
        
        testTable.delegate = self
        testTable.dataSource = self
        
        view.addSubview(testTable)
        testTable.translatesAutoresizingMaskIntoConstraints = false
        testTable.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        testTable.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        testTable.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        testTable.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingView", for: indexPath)
//        let item = settings[indexPath.row]
        return cell
    }
}

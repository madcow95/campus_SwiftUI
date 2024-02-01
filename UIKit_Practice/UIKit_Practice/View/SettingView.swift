//
//  SettingView.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/2/1.
//

import UIKit

class SettingView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView!
    let settings: [SettingModel] = [SettingModel(image: UIImage(systemName: "person")!, title: "태양")]
//    let settings: [[SettingModel]] = [
//        [SettingModel(image: UIImage(systemName: "person")!, title: "태양")]
//    ]
    
    private let testTable: UITableView = {
        let table = UITableView()
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    func configure() {
        view.backgroundColor = .white
        navigationItem.title = "Test Title"
        
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingViewCell", for: indexPath)
//        let item = settings[indexPath.row]
        return cell
    }
}

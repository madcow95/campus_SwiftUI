//
//  SettingView.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/2/10.
//

import UIKit

class SettingView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableViewModel = SettingViewModel()
    var tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "설정"
        
        tableView = UITableView(frame: view.bounds, style: .insetGrouped)
//        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(tableView)
        tableView.layer.cornerRadius = 10
        tableView.layer.masksToBounds = true
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(SettingTableCell.self, forCellReuseIdentifier: "SettingTableCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewModel.items.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.items[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableCell", for: indexPath) as? SettingTableCell else {
            return UITableViewCell()
        }
        let item = tableViewModel.items[indexPath.section][indexPath.item]
        let image = UIImage(systemName: item.image)!
        
        cell.tableImage.image = image
        cell.tableImage.backgroundColor = item.backgroundColor
        cell.tableImage.tintColor = .white
        cell.tableImage.layer.cornerRadius = 5
        cell.tableImage.layer.masksToBounds = true
        cell.titleLabel.text = item.title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = tableViewModel.items[indexPath.section][indexPath.item]
        print(item.title)
    }
}

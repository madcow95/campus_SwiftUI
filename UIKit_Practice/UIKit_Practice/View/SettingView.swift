//
//  SettingView.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/2/10.
//

import UIKit

class SettingView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableViewModel = SettingViewModel()
    var customTable: UITableView = {
        var ta = UITableView()
        ta.translatesAutoresizingMaskIntoConstraints = false
        
        return ta
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationItem.title = "설정"
        
        customTable = UITableView(frame: view.bounds, style: .insetGrouped)
//        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(customTable)
        customTable.layer.cornerRadius = 10
        customTable.layer.masksToBounds = true
        
        customTable.dataSource = self
        customTable.delegate = self
        customTable.register(SettingTableCell.self, forCellReuseIdentifier: "SettingTableCell")
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
        
        cell.tableImage.image = UIImage(systemName: item.image)!
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
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableViewModel.items[indexPath.section].remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

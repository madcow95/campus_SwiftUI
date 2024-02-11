//
//  SettingView.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/2/10.
//

import UIKit

class SettingView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView: UITableView!
    var tableViewModel = SettingViewModel()
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var descLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(tableView)
        
        tableView.dataSource = self
//        tableView.delegate = self
        tableView.register(SettingTableCell.self, forCellReuseIdentifier: "SettingTableCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableCell", for: indexPath) as? SettingTableCell else {
            return UITableViewCell()
        }
//        cell.textLabel?.text = tableViewModel.items[indexPath.item].title
//        cell.detailTextLabel?.text = tableViewModel.items[indexPath.item].price
        cell.titleLabel.text = tableViewModel.items[indexPath.item].title
        cell.subscriptionLabel.text = tableViewModel.items[indexPath.item].price
        return cell
    }
    
}

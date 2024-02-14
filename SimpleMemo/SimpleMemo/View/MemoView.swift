//
//  MemoView.swift
//  SimpleMemo
//
//  Created by MadCow on 2024/2/12.
//

import UIKit

class MemoView: UIViewController, UITableViewDataSource, UITableViewDelegate, DataUpdateDelegate {
    
    var workoutList = MemoViewModel().getAllWorkout()
    var memoTable: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "나의 운동 기록"
        let addDeleteBtns = [
            UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(deleteWorkoutList)),
            UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addWorkoutList))
        ]
        navigationItem.rightBarButtonItems = addDeleteBtns
        
        memoTable = UITableView(frame: view.bounds, style: .insetGrouped)
        memoTable.translatesAutoresizingMaskIntoConstraints = false
        memoTable.dataSource = self
        memoTable.delegate = self
        
        view.addSubview(memoTable)
        memoTable.register(MemoTable.self, forCellReuseIdentifier: "MemoTable")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workoutList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MemoTable", for: indexPath) as? MemoTable else {
            return UITableViewCell()
        }
        
        let item = workoutList[indexPath.item]
        cell.workLabel.text = item.title
        cell.countLabel.text = String(item.memoContent)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            workoutList.remove(at: indexPath.item)
            memoTable.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func updateData(name: String, content: String) {
        workoutList.append(MemoModel(title: name, memoContent: content))
        memoTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let item = workoutList[indexPath.item]
        navigationController?.pushViewController(MemoDetailView(), animated: true)
    }
    
    @objc func addWorkoutList() {
        let vc = AddMemoView()
        vc.delegate = self
//        present(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func deleteWorkoutList() {
        if workoutList.count > 0 {
            workoutList.removeLast()
        }
        memoTable.reloadData()
    }
}

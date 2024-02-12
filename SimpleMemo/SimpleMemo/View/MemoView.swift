//
//  MemoView.swift
//  SimpleMemo
//
//  Created by MadCow on 2024/2/12.
//

import UIKit

class MemoView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
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
        cell.workLabel.text = item.name
        cell.countLabel.text = String(item.setCount)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            workoutList.remove(at: indexPath.item)
            memoTable.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @objc func addWorkoutList() {
        /*var lastCount = 1
        if let lastElement = workoutList.last {
            lastCount = lastElement.setCount + 1
        }
        workoutList.append(MemoModel(name: "가슴", setCount: lastCount))
        memoTable.reloadData()
        */
        present(AddMemoView(), animated: true)
    }
    
    @objc func deleteWorkoutList() {
        if workoutList.count > 0 {
            workoutList.removeLast()
        }
        memoTable.reloadData()
    }
}

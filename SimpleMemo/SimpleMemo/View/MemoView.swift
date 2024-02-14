//
//  MemoView.swift
//  SimpleMemo
//
//  Created by MadCow on 2024/2/12.
//

import UIKit

class MemoView: UIViewController, UITableViewDataSource, UITableViewDelegate, DataUpdateDelegate {
    
    // 임시로 만든 Memo Model List
    var workoutList = MemoViewModel().getAllWorkout()
    // viewDidLoad 내부에 만들려고 했지만 아래 tableView func에서 사용하려면 전역변수?로 만들어야 할 것 같아서 여기에 만듦
    var memoTable: UITableView = {
        let table = UITableView()
        // translatesAutoresizingMaskIntoConstraints: Auto Layout을 사용할 때 해당 View의 frame 속성을 자동으로 계산할지 여부
        // 여기에서는 아래에서 수동으로 설정해주고 있으니 false로 설정함.
        table.translatesAutoresizingMaskIntoConstraints = false
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // view 화면의 title 설정
        navigationItem.title = "나의 운동 기록"
        // view의 우측 상단에 표시할 버튼 List
        let addDeleteBtns = [
            // UIBarButtonItem - barButtonSystemItem: buttonItem을 생성할 때 표시할 표준 아이콘
            // target: UIBarButtonItem이 클릭되었을 때 이벤트를 처리할 대상 객체 self면 현재 swift파일이고 다른 View를 지정할 수도 있는듯
            UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(deleteWorkoutList)),
            UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addWorkoutList))
        ]
        // view 화면의 우측 상단에 button 등록
        navigationItem.rightBarButtonItems = addDeleteBtns
        
        // table의 frame과 style 설정 -- 위에서 설정이 안되어서 좀 더 알아봐야함..
        memoTable = UITableView(frame: view.bounds, style: .insetGrouped)
        memoTable.translatesAutoresizingMaskIntoConstraints = false
        
        // dataSource: 데이터를 표시하기 위해 필요한 데이터를 제공하는 역할 이라고 하는데... 사용은 할 수 있겠지만 잘 이해는 가지 않는다.
        memoTable.dataSource = self
        // delegate: 사용자 상호 작용에 대한 이벤트를 처리 -- ex) Table의 특정 row를 선택했을 때 Event 처리 등
        memoTable.delegate = self
        
        // 현재 view의 하위에 새로운 view를 추가
        view.addSubview(memoTable)
        // register: UITableViewCell 클래스 또는 그의 서브 클래스를 특정 reuseIdentifier와 연결하여 UITableView에 등록
        memoTable.register(MemoTable.self, forCellReuseIdentifier: "MemoTable")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Table에 표시할 list의 개수
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
        // Table에서 row를 오른쪽으로 swipe했을 때 table을 삭제하거나 할 수 있는 Event 처리 함수
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

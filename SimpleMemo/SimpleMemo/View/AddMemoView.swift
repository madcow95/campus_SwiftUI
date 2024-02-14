//
//  AddMemoView.swift
//  SimpleMemo
//
//  Created by MadCow on 2024/2/12.
//

import UIKit

class AddMemoView: UIViewController {
    
    var delegate: DataUpdateDelegate?
    var workoutList = MemoViewModel().getAllWorkout()
    
    let memoTitleLabel: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "운동 이름"
        tf.keyboardType = .default
        
        return tf
    }()
    
    let memoContentLabel: UITextView = {
        let tf = UITextView()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.keyboardType = .default
        tf.text = "작성할 내용을 작성하세요."
        tf.textColor = UIColor.lightGray
        tf.font = UIFont(name: "내용", size: 15)
        
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let closeButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(closeButtonTapped))
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(registerWorkout))

        navigationItem.title = "기록하기"
        navigationItem.leftBarButtonItem = closeButton
        navigationItem.rightBarButtonItem = addButton
        
        view.addSubview(memoTitleLabel)
        memoTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        memoTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        memoTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        view.addSubview(memoContentLabel)
        memoContentLabel.topAnchor.constraint(equalTo: memoTitleLabel.bottomAnchor, constant: 10).isActive = true
        memoContentLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        memoContentLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        memoContentLabel.heightAnchor.constraint(equalToConstant: 500).isActive = true
    }
    
    @objc func closeButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func registerWorkout() {
        guard let title = memoTitleLabel.text else {
            return
        }
        
        guard let memoContent = memoContentLabel.text else {
            return
        }
        
        delegate?.updateData(name: title, content: memoContent)
        navigationController?.popViewController(animated: true)
    }
}

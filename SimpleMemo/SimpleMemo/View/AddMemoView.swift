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
    
    let workoutName: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "운동 이름"
        tf.keyboardType = .default
        
        return tf
    }()
    
    let setCount: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "세트 수"
        tf.keyboardType = .numberPad
        
        return tf
    }()
    
    let registerButton: UIButton = {
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 300, height: 150))
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("등록", for: .normal)
        btn.backgroundColor = .blue
        btn.layer.cornerRadius = 10
        btn.layer.masksToBounds = true
        
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let closeButton = UIButton(type: .system)
        closeButton.setTitle("Close", for: .normal)
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        closeButton.frame = CGRect(x: 20, y: 50, width: 100, height: 50)
        view.addSubview(closeButton)
        
        view.addSubview(workoutName)
        workoutName.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        workoutName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        view.addSubview(setCount)
        setCount.topAnchor.constraint(equalTo: workoutName.bottomAnchor, constant: 10).isActive = true
        setCount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        registerButton.addTarget(self, action: #selector(registerWorkout), for: .touchUpInside)
        view.addSubview(registerButton)
        registerButton.topAnchor.constraint(equalTo: setCount.bottomAnchor, constant: 10).isActive = true
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        registerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        registerButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
    @objc func closeButtonTapped() {
        dismiss(animated: true)
    }
    
    @objc func registerWorkout() {
        guard let workoutName = workoutName.text else {
            return
        }
        
        guard let setCount = setCount.text else {
            return
        }
        delegate?.didUpdateData(name: workoutName, set: Int(setCount)!)
        dismiss(animated: true)
    }
}

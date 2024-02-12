//
//  MemoViewModel.swift
//  SimpleMemo
//
//  Created by MadCow on 2024/2/12.
//

import UIKit

class MemoViewModel {
    func getAllWorkout() -> [MemoModel] {
        let allWorkouts: [MemoModel] = [
            MemoModel(name: "등1", setCount: 1),
            MemoModel(name: "등2", setCount: 2),
            MemoModel(name: "등3", setCount: 3),
            MemoModel(name: "등4", setCount: 4),
            MemoModel(name: "등5", setCount: 5),
            MemoModel(name: "등6", setCount: 6),
            MemoModel(name: "등7", setCount: 7),
            MemoModel(name: "등8", setCount: 8),
            MemoModel(name: "등9", setCount: 9),
            MemoModel(name: "등10", setCount: 10),
            MemoModel(name: "등11", setCount: 11)
        ]
        
        return allWorkouts
    }
}

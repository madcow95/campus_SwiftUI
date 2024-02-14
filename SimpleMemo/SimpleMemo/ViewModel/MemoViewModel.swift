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
            MemoModel(title: "제목1", memoContent: "내용1"),
            MemoModel(title: "제목2", memoContent: "내용2"),
            MemoModel(title: "제목3", memoContent: "내용3"),
            MemoModel(title: "제목4", memoContent: "내용4"),
            MemoModel(title: "제목5", memoContent: "내용5"),
            MemoModel(title: "제목6", memoContent: "내용6"),
            MemoModel(title: "제목7", memoContent: "내용7"),
            MemoModel(title: "제목8", memoContent: "내용8"),
            MemoModel(title: "제목9", memoContent: "내용9"),
            MemoModel(title: "제목10", memoContent: "내용10"),
            MemoModel(title: "제목11", memoContent: "내용11")
        ]
        
        return allWorkouts
    }
}

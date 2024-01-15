//
//  Diff.swift
//  swiftUI_first
//
//  Created by MadCow on 2024/1/15.
//

import SwiftUI

struct Diff: View {
    let structCar = Car_Struct(name: "리어카", owner: "리이오")
    let classCar = Car_Class(name: "리어카2", owner: "리이오2")
    
    var body: some View {
        Text("\(structCar.name)의 주인은 \(structCar.owner)입니다.")
        Text("\(classCar.name)의 주인은 \(classCar.owner)입니다.")
        VStack {
            Button {
                let broCar = classCar
                broCar.name = "동생차"
                broCar.owner = "동생"
                classCar.sayhi()
            } label: {
                Text("출발")
            }
        }
    }
}

struct Car_Struct {
    var name: String
    var owner: String
    
    func sayhi() {
        print("Hello \(owner)")
    }
}

// class는 init이 필수로 포함되어야함.
class Car_Class: ObservableObject {
    var name: String
    var owner: String
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
    
    func sayhi() {
        print("Hello \(owner)")
    }
}

#Preview {
    Diff()
}

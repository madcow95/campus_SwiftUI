//
//  Elevator.swift
//  swiftUI_first
//
//  Created by MadCow on 2024/1/15.
//

import SwiftUI

struct Elevator: View {
    
    @State var myElevator = ElevatorStruct()
    
    var body: some View {
        VStack {
            Text("층수 \(myElevator.level)")
            
            HStack {
                Button {
                    myElevator.goDown()
                } label: {
                    Text("아래로")
                }
                
                Button {
                    myElevator.goUp()
                } label: {
                    Text("위로")
                }
            }
        }
    }
}

struct ElevatorStruct {
    // 1. 층 수를 표시해주는 display.
    // 2. 위, 아래로 움직일 수 있어야함.
    var level: Int = 1
    
    mutating func goDown() {
        if level > 1 {
            self.level -= 1
        }
    }
    
    mutating func goUp() {
        if level < 20 {
            self.level += 1
        }
    }
}

#Preview {
    Elevator()
}

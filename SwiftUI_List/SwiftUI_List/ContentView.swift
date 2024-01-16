//
//  ContentView.swift
//  SwiftUI_List
//
//  Created by MadCow on 2024/1/16.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: List에서 하드코딩으로 하나하나 Element를 집어넣으면 10개가 최대이지만, 배열로 넘기면 모두 넘길 수 있음.
    var fruits: [String] = ["Apple", "Banana", "Cherry", "Durian", "Elderberry"]
    var prices: [String] = ["1000", "1500", "500", "2000", "3000"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    HStack {
                        Text(fruit)
                        
                    }
                }
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ContentView()
}

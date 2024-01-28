//
//  ListView.swift
//  SwiftUI_Practice
//
//  Created by MadCow on 2024/1/26.
//

import SwiftUI

struct FruitListView: View {
    @State var favoriteFruits: [Fruit] = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Cherry", matchFruitName: "Durian", price: 3000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 2000),
        Fruit(name: "Elder berry", matchFruitName: "Kiwi", price: 4000),
        Fruit(name: "Kiwi", matchFruitName: "Cherry", price: 8000)
    ]
//    let fruits: [String] = ["Apple", "Banana", "Cherry", "Durian", "Kiwi", "Elder berry"]
//    let prices: [String] = ["1000", "3000", "4000", "2400", "8000"]
    @State var fruitName: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("insert fruit name", text: $fruitName)
                    Button {
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName: "random fruit", price: 3500))
                        fruitName = ""
                    } label: {
                        Text("insert")
                            .padding()
                            .background(fruitName.isEmpty ? .gray : .blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .disabled(fruitName.isEmpty)
                }
                .padding()
                
                List {
                    ForEach(favoriteFruits, id: \.self) { fruit in
                        VStack(alignment: .leading) {
                            Text("과일이름 : \(fruit.name)")
                            Text("맞는과일 : \(fruit.matchFruitName)")
                            Text("가격 : \(fruit.price)")
                        }
                        .font(.system(size: 15))
                    }
                    .onDelete { IndexSet in
                        favoriteFruits.remove(atOffsets: IndexSet)
                    }
                }
            }
        }
        .navigationTitle("Fruit List")
    }
}

#Preview {
    FruitListView()
}

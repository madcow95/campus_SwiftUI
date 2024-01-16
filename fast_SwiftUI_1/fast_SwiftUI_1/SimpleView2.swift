//
//  SimpleView2.swift
//  fast_SwiftUI_1
//
//  Created by MadCow on 2024/1/16.
//

import SwiftUI

struct SimpleView2: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding()
            
            Text("Text Element 1")
                .padding()
                .bold()
            
            Text("Text Element 2")
                .padding()
            
            Text("Text Element 3")
                .padding()
            
            HStack {
                MyButton(buttonName: "Button 1", buttonColor: .blue, buttonImage: nil)
                MyButton(buttonName: "Button 2", buttonColor: .green, buttonImage: nil)
            }
            
            MyButton(buttonName: "Complex Button", buttonColor: .orange, buttonImage: Image(systemName: "arrow.right.circle.fill"))
        }
    }
}

#Preview {
    SimpleView2()
}

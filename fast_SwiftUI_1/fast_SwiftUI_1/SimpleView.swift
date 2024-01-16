//
//  SimpleView.swift
//  fast_SwiftUI_1
//
//  Created by MadCow on 2024/1/16.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("헤드라인 입니다.")
                .font(.headline)
                .fontWeight(.bold)
                .padding()
            
            Text("서브헤드라인 입니다.")
                .font(.subheadline)
                .padding()
            
            Text("바디 입니다.")
                .font(.body)
                .padding()
            
            Button {
                print("Button clicked!!")
            } label: {
                Text("Click Me")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .bold()
            }
        }
    }
}

#Preview {
    SimpleView()
}

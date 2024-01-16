//
//  MyButton.swift
//  fast_SwiftUI_1
//
//  Created by MadCow on 2024/1/16.
//

import SwiftUI

struct MyButton: View {
    let buttonName: String
    let buttonColor: UIColor
    let buttonImage: Image?
    
    var body: some View {
        Button {
            
        } label: {
            VStack {
                if let image = buttonImage {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                }
                Text(buttonName)
            }
            .padding()
            .background(Color(buttonColor))
            .foregroundColor(.white)
            .cornerRadius(10)
            .bold()
        }
    }
}

#Preview {
    MyButton(buttonName: "myButton", buttonColor: .blue, buttonImage: nil)
}

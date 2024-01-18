//
//  SimpleView3.swift
//  fast_SwiftUI_1
//
//  Created by MadCow on 2024/1/16.
//

import SwiftUI

struct SimpleView3: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            HStack {
                VStack(alignment: .leading) {
                    MyHStack(imageName: "person.2", title: "Shared Library", description: "Combine photos and videos with the people Combine photos and videos with the people ckw madcow")
                    MyHStack(imageName: "slider.horizontal.2.square.on.square", title: "Copy & Paste Edits", description: "Combine photos and videos with the people Combine photos and videos with the people ckw madcow")
                    MyHStack(imageName: "doc.on.doc", title: "Merge Duplicates", description: "Combine photos and videos with the people Combine photos and videos with the people ckw madcow")
                }
                .padding(.horizontal, 15)
            }
            Spacer()
            Button {
                print("What's New in Photos!!")
            } label: {
                Text("Continue")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
                
        }
    }
}

#Preview {
    SimpleView3()
}

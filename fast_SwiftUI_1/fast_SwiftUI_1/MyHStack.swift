//
//  MyHStack.swift
//  fast_SwiftUI_1
//
//  Created by MadCow on 2024/1/16.
//

import SwiftUI

struct MyHStack: View {
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25)
                .foregroundColor(.blue)
            VStack(alignment: .leading) {
                Text(title)
                    .bold()
                Text(description)
                    .foregroundColor(Color.gray)
            }
//            .padding(.leading, 3)
        }
    }
}

#Preview {
    MyHStack(imageName: "pencil", title: "title", description: "description")
}

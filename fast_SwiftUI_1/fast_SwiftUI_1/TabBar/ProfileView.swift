//
//  ProfileView.swift
//  fast_SwiftUI_1
//
//  Created by MadCow on 2024/1/23.
//

import SwiftUI

struct ProfileView: View {
    @State var changeSun: String = "sun.max"
    let randomImages: [String] = ["sun.max", "sun.horizon", "sun.dust", "sun.snow", "sun.rain"]
    var body: some View {
        VStack {
            Image(systemName: changeSun)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            Button {
                if let image = randomImages.randomElement() {
                    changeSun = image
                }
            } label: {
                Text("Change Image!")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ProfileView()
}

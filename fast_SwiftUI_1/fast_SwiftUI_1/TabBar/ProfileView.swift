//
//  ProfileView.swift
//  fast_SwiftUI_1
//
//  Created by MadCow on 2024/1/23.
//

import SwiftUI

struct ProfileView: View {
    @State var changeSun: Bool = true
    var body: some View {
        VStack {
            Image(systemName: changeSun ? "sun.max" : "sun.horizon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            
            Button {
                changeSun.toggle()
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

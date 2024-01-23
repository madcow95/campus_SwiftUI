//
//  HomeView.swift
//  fast_SwiftUI_1
//
//  Created by MadCow on 2024/1/23.
//

import SwiftUI

struct HomeView: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            TextField(
                "Email",
                text: $email
            )
            
            TextField(
                "Password",
                text: $password
            )
            
            Button {
                print("Current Email >> \($email.wrappedValue)")
                print("Current Password >> \($password.wrappedValue)")
            } label: {
                Text("Login")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}

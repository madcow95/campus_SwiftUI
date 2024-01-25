//
//  MainTabBarView.swift
//  SwiftUI_Practice
//
//  Created by MadCow on 2024/1/25.
//

import SwiftUI

struct MainTabBarView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            HomeView()
                .tabItem { Text("Home") }
            
            ProfileView()
                .tabItem { Text("Profile") }
        }
    }
}

#Preview {
    MainTabBarView()
}

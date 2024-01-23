//
//  TabBarView1.swift
//  fast_SwiftUI_1
//
//  Created by MadCow on 2024/1/23.
//

import SwiftUI

struct TabBarView1: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    TabBarView1()
}

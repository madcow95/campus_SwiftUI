//
//  SettingView.swift
//  SwiftUI_Practice
//
//  Created by MadCow on 2024/1/26.
//

import SwiftUI

struct SettingView: View {
    
    @State var settingInfos: [[SettingInfo]] = [
        [
            SettingInfo(title: "스크린 타임", imageName: "hourglass", backgroundColor: .purple),
        ],
        [
            SettingInfo(title: "일반", imageName: "gear", backgroundColor: .gray),
            SettingInfo(title: "손쉬운 사용", imageName: "person.crop.circle", backgroundColor: .blue),
            SettingInfo(title: "개인정보 보호 및 보안", imageName: "hand.raised.fill", backgroundColor: .blue)
        ],
        [
            SettingInfo(title: "암호", imageName: "key.fill", backgroundColor: .gray),
        ],
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(settingInfos, id: \.self) { setting in
                    Section {
                        ForEach(setting, id: \.self) { info in
                            Label(
                                title: {
                                    Text(info.title)
                                },
                                icon: {
                                    Image(systemName: info.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .padding(.all, 7)
                                        .background(info.backgroundColor)
                                        .foregroundColor(info.foregroundColor)
                                        .cornerRadius(9)
                                }
                            )
                        }
                    }
                }
                .onDelete { IndexSet in
                    settingInfos.remove(atOffsets: IndexSet)
                }
            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    SettingView()
}

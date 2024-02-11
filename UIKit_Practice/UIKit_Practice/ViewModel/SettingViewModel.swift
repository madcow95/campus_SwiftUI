//
//  SettingViewModel.swift
//  UIKit_Practice
//
//  Created by MadCow on 2024/2/10.
//

import UIKit

struct SettingViewModel {
    let items: [[SettingModel]] = [
        [
            SettingModel(title: "스크린 타임", image: "hourglass", backgroundColor: .purple)
        ],
        [
            SettingModel(title: "일반", image: "gear", backgroundColor: .gray),
            SettingModel(title: "손쉬운 사용", image: "person.crop.circle", backgroundColor: .blue),
            SettingModel(title: "개인정보 보호 및 보안", image: "hand.raised.fill", backgroundColor: .blue)
        ],
        [
            SettingModel(title: "암호", image: "key.fill", backgroundColor: .gray)
        ]
    ]
}

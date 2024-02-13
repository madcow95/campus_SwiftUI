//
//  CustomProtocol.swift
//  SimpleMemo
//
//  Created by MadCow on 2024/2/13.
//

import UIKit

protocol DataUpdateDelegate: AnyObject {
    func didUpdateData(name: String, set: Int)
}

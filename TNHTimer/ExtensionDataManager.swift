//
//  ExtensionDataManager.swift
//  TNHTimer
//
//  Created by markd on 3/21/20.
//  Copyright © 2020 Borkware. All rights reserved.
//

import Foundation

enum ExtensionDataManager {
    
    private static let userDefaults = UserDefaults(suiteName: "group.com.borkware.TNHTimer")

    static var label1Text: String {
        get { return userDefaults?.value(forKey: .label1) as? String ?? "-" }
        set { userDefaults?.setValue(newValue, forKey: .label1) }
    }
}

// keys
private extension String {
    static let label1 = "Blah blah"
}

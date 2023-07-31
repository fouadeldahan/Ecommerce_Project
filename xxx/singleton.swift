//
//  singleton.swift
//  xxx
//
//  Created by odc on 31/07/2023.
//

import Foundation
import UIKit
class UserDataManager {
    static let shared = UserDataManager()

    var loggedInUsername: String?
    var loggedInEmail: String?
    private init() { }
}

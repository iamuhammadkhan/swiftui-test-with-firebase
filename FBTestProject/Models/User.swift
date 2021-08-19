//
//  User.swift
//  FBTestProject
//
//  Created by Muhammad Khan on 8/17/21.
//

import Foundation

struct User: Identifiable {
    var id: String = UUID().uuidString
    var firstName: String
    var lastName: String
}

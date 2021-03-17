//
//  User.swift
//  ProductService
//
//  Created by Huy Ong on 3/16/21.
//

import Foundation

struct User: Codable {
    var fName: String
    var lName: String
    var fullName: String {
        fName + " " + lName
    }
}

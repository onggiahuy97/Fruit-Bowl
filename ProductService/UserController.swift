//
//  UserController.swift
//  ProductService
//
//  Created by Huy Ong on 3/15/21.
//

import SwiftUI

class UserController: ObservableObject {
    @Published var isLoggedIn = true
    
    func signIn(_ username: String, _ password: String) {
        isLoggedIn = true
    }
}

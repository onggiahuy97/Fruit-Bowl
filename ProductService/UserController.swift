//
//  UserController.swift
//  ProductService
//
//  Created by Huy Ong on 3/15/21.
//

import SwiftUI

class UserController: ObservableObject {
    @Published var isLoggedIn = true
    
    private(set) var user: User {
        didSet {
            didSetUser()
        }
    }
    
    init() {
        do {
            let user = try UserDefaults.standard.getObject(forKey: "User", castTo: User.self)
            self.user = user
        } catch {
            print(error.localizedDescription)
            self.user = User(fName: "", lName: "")
            isLoggedIn = false
        }
    }
    
    func updateUser(_ user: User) {
        self.user = user
    }
    
    func signIn(_ username: String, _ password: String) {
        isLoggedIn = true
    }
    
    func signOut() {
        isLoggedIn = false
        UserDefaults.standard.removeObject(forKey: "User")
    }
}

extension UserController {
    private func didSetUser() {
        let defaults = UserDefaults.standard
        do {
            try defaults.setObject(user, forKey: "User")
        } catch {
            print(error.localizedDescription)
        }
    }
}

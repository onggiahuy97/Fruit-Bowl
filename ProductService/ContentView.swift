//
//  ContentView.swift
//  ProductService
//
//  Created by Huy Ong on 3/14/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var uc: UserController
    
    var body: some View {
        if uc.isLoggedIn {
            HomeView()
        } else {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

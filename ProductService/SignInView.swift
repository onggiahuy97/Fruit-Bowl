//
//  SignInView.swift
//  ProductService
//
//  Created by Huy Ong on 3/14/21.
//

import SwiftUI

struct SignInView: View {
    @EnvironmentObject var uc: UserController
    
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image("logoWhite")
            Spacer().frame(height: 40)
            VStack(alignment: .leading, spacing: 10) {
                Text("Your information")
                    .foregroundColor(Color.black.opacity(0.7))
                    .padding(.horizontal, 20)
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                Text("need help?")
                    .font(.system(size: 14, weight: .light))
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)

            }
            .padding()
            CustomButton(text: "Sign in", bgColor: .black) {
                guard !username.isEmpty && !password.isEmpty else { return }
                uc.signIn(username, password)
            }
            Spacer()
        }
        .background(Color.main)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

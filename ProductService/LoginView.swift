//
//  LoginView.swift
//  ProductService
//
//  Created by Huy Ong on 3/14/21.
//

import SwiftUI

struct LoginView: View {
    @State private var isShowingSignIn = false
    @State private var isShowingRegister = false
    
    var body: some View {
        VStack {
            Spacer().frame(height: 30)
            Image("logoGreen")
            Spacer().frame(height: 80)
            Image("logo1")
            Spacer().frame(height: 180)
            VStack(spacing: 15) {
                CustomButton(text: "Register Today", bgColor: .main) {
                    isShowingRegister = true
                }
                .sheet(isPresented: $isShowingRegister, content: {
                    RegisterView()
                })
                CustomButton(text: "Sign in",textColor: .black, bgColor: .secondBackground) {
                    isShowingSignIn = true
                }
                .sheet(isPresented: $isShowingSignIn, content: {
                    SignInView()
                })
            }
            Spacer()
        }
        .padding(.vertical, 40)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

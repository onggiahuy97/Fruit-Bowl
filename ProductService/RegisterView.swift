//
//  RegisterView.swift
//  ProductService
//
//  Created by Huy Ong on 3/15/21.
//

import SwiftUI

struct RegisterView: View {
    @State private var fName = ""
    @State private var lName = ""
    @State private var username = ""
    @State private var email = ""
    @State private var confirmEmail = ""
    @State private var birthDate = Date()
    @State private var password = ""
    
    var getInfomationView: some View {
        VStack {
            CustomTextField("First name", text: $fName)
            CustomTextField("Last name", text: $lName)
            CustomTextField("Last name", text: $lName)
            CustomTextField("Username", text: $username)
            CustomTextField("Email", text: $email)
            CustomTextField("Confirm email", text: $confirmEmail)
            DatePicker("Birthday", selection: $birthDate, displayedComponents: .date)
                .padding(10)
                .foregroundColor(.main)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal)
                
            
            CustomTextField("Password", text: $password)
        }
        .padding(.horizontal)
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Spacer()
                Image("logoWhite")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.vertical)
                
                Text("Your information")
                    .foregroundColor(Color.black.opacity(0.7))
                    .padding(.leading, 30)
                getInfomationView
                CustomButton(text: "Submit", textColor: .white, bgColor: .black) {
                    
                }
                Spacer()
            }
        }
        .background(Color.main)
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

//
//  SettingView.swift
//  ProductService
//
//  Created by Huy Ong on 3/15/21.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct SettingView: View {
    @EnvironmentObject var uc: UserController
    
    static let tag: String? = "SettingView"
    
    var profileImage: some View {
        VStack(spacing: 10) {
            Image("profileImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 116, height: 116)
                .shadow(color: Color.black.opacity(0.5), radius: 3, x: 3, y: 3)
            Text("Huy Ong")
                .font(.system(size: 18, weight: .bold))
        }
        .padding()
    }
    
    var logoutButton: some View {
        Button("Log out", action: {
            uc.isLoggedIn = false
        })
    }
    
    var informationView: some View {
        HStack {
            profileImage
            VStack(alignment: .leading, spacing: 10) {
                HStack(spacing: 20) {
                    VStack {
                        Text("12")
                        Text("Posts")
                            
                    }
                    VStack {
                        Text("51")
                        Text("Followers")
                    }
                    VStack {
                        Text("16")
                        Text("Following")
                    }
                }
                .font(.caption)
                .frame(maxWidth: .infinity)
                Divider().padding(.horizontal)
                Text("\"This is a test for quotation mark This is a\"")
                    .font(.subheadline)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                informationView
                Form {
                    ForEach(0...10, id: \.self) { _ in
                        Section {
                            NavigationLink(destination: EmptyView()) { Text("Personal infomation") }
                            NavigationLink(destination: EmptyView()) { Text("Personal infomation") }
                            NavigationLink(destination: EmptyView()) { Text("Personal infomation") }
                        }
                    }
                }
            }
            .navigationTitle(Text("Setting"))
            .navigationBarItems(trailing: logoutButton)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

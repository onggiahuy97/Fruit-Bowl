//
//  HomeView.swift
//  ProductService
//
//  Created by Huy Ong on 3/15/21.
//

import SwiftUI

struct HomeView: View {
    @State var selectedView: String?
    
    var body: some View {
        TabView(selection: $selectedView) {
            //            Text("")
            //                .tag(0)
            //                .tabItem {
            //                    Image(systemName: "envelope.badge")
            //                }
            //
            //            Text("")
            //                .tag(0)
            //                .tabItem {
            //                    Image(systemName: "person.3.fill")
            //                }
            SettingView()
                .tag(SettingView.tag)
                .tabItem {
                    Image(systemName: "person.fill")
                }
            
            NewFeedsView()
                .tag(NewFeedsView.tag)
                .tabItem {
                    Image(systemName: "house")
                    
                }
            //            Text("")
            //                .tag(0)
            //                .tabItem {
            //                    Image(systemName: "bell.fill")
            //                }
            //
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

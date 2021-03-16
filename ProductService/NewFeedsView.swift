//
//  NewFeedsView.swift
//  ProductService
//
//  Created by Huy Ong on 3/15/21.
//

import SwiftUI

struct NewFeedsView: View {
    static let tag: String? = "NewFeedsView"
    
    var body: some View {
        VStack{
            Rectangle()
                .frame(height: 40)
                .foregroundColor(.main)
            Spacer()
        }
    }
}

struct NewFeedsView_Previews: PreviewProvider {
    static var previews: some View {
        NewFeedsView()
    }
}

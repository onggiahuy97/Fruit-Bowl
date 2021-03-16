//
//  CustomCheckBox.swift
//  ProductService
//
//  Created by Huy Ong on 3/15/21.
//

import SwiftUI

struct CustomCheckBox: View {
    @Binding var isCheck: Bool
    let text: String
    
    var body: some View {
        VStack {
            ZStack {
                Image(systemName: "squareshape")
                Image(systemName: "xmark.square")
            }
        }
    }
}

struct CustomCheckBox_Previews: PreviewProvider {
    static var previews: some View {
        CustomCheckBox(isCheck: .constant(false), text: "Hello")
    }
}

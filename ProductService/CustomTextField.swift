//
//  CustomTextField.swift
//  ProductService
//
//  Created by Huy Ong on 3/15/21.
//

import SwiftUI

struct CustomTextField: View {
    let placeHolder: String
    @Binding var text: String
    
    init(_ placeHolder: String, text: Binding<String>) {
        self.placeHolder = placeHolder
        _text = text
    }
    
    var body: some View {
        TextField(placeHolder, text: $text)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal)
    }
}


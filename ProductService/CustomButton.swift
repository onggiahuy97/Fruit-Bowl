//
//  CustomButton.swift
//  ProductService
//
//  Created by Huy Ong on 3/14/21.
//

import SwiftUI

struct CustomButton: View {
    let text: String
    let textColor: Color
    let bgColor: Color
    let handler: () -> Void
    
    init(text: String, textColor: Color = .white, bgColor: Color, handler: @escaping () -> Void) {
        self.text = text
        self.textColor = textColor
        self.bgColor = bgColor
        self.handler = handler
    }
    
    var body: some View {
        Button(action: {
            handler()
        }, label: {
            Text(text)
                .font(.system(size: 20, weight: .light, design: .default))
                .frame(minWidth: 140, minHeight: 44)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                .padding(.vertical, 5)
                .foregroundColor(textColor)
                .background(bgColor)
                .cornerRadius(10)
                .padding(.horizontal)
        })
        .padding(.horizontal)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text: "Sign in", bgColor: .main) {
            
        }
    }
}

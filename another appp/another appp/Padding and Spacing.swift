//
//  Padding and Spacing.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 20/06/24.
//

import SwiftUI

struct Padding_and_Spacing: View {
    var body: some View {
        
            //.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
           // .padding(.leading, 20)
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 10)
                .fontWeight(.bold)
                .font(Font.system(size: 20))

           Text("This is the description of the title in the app which helps to improve the capability of the items in real world which is widely used")
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .foregroundColor(.white)
        .padding(.horizontal, 30)
        .padding(.vertical, 30)
        
        //.frame(maxWidth: .infinity, alignment: .leading)
        .background(
            Color(.green)
            
        )
        .cornerRadius(30)
        .shadow(
            color: Color.black.opacity(0.3),
            radius: 10,
            x: 0, y: 10
            )
        .padding(.horizontal, 10)
    }
}

#Preview {
    Padding_and_Spacing()
}

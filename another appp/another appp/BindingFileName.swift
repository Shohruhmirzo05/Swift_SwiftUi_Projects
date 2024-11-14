//
//  Binding.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 09/07/24.
//

import SwiftUI

struct BindingFileName: View {
    @State var backgroundColor: Color = Color.green
    @State var title: String = "This is Main Title"
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            
           
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                    .font(.headline)
                    .bold()
                ExtractedView(backgroundColor: $backgroundColor, title: $title)
            }
            
        }
    }
}

#Preview {
    BindingFileName()
}



struct ExtractedView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @State var buttonTitle: String = "Button"
    @Binding var title: String
    @State var foregroundColor: Color = Color.white
    var body: some View {
        VStack{
            
            Button(action: {
                backgroundColor = .yellow
                buttonColor = .blue.opacity(0)
                buttonTitle = "Button #2"
                    title = "hello world"
                    .uppercased()
                foregroundColor = .black
                
            }, label: {
                Text(buttonTitle)
                    .foregroundStyle(foregroundColor)
                    .font(.title2)
                    .padding()
                    .padding(.horizontal, 30)
                    .background(buttonColor)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
            })
            
        }
    }
}

//
//  ExtractSubViews.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 09/07/24.
//

import SwiftUI

struct ExtractSubViews: View {
    var body: some View {
        ZStack{
            Color.pink
                .ignoresSafeArea()
            
            // this is example to extract subView when your items are going to change on application
            
            // if your views never going to change, just use Var smth: some View { }
            
            // They both help to keep clean coding
            VStack {
                ExtractedMyView(title: "hello", count: 5, bgColor: .blue)
                ExtractedMyView(title: "hiyllo", count: 5, bgColor: .yellow)
            }
            


        }
    }
}

#Preview {
    ExtractSubViews()
}

struct ExtractedMyView: View {
    let title: String
    let count: Int
    let bgColor: Color
    var body: some View {
        VStack{
            Text("amount is: \(count)")
            Text(title)
        }
        .font(.title2)
        .padding()
        .padding(.horizontal, 20)
        .background(bgColor)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10)
    }
}

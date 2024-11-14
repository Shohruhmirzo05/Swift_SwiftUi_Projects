//
//  ExtractFunctions.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 09/07/24.
//

import SwiftUI

struct ExtractFunctions: View {
    
    @State var backgroundColor = Color.yellow
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Hello world")
                .font(.title)
            Text("click to ADD: \(count)")
                .font(.title2)
            Button(action: {
                buttonPressed()
            }
                   , label: {
                Text("Press to Pink")
                    .padding(20)
                    .padding(.horizontal)
                    .foregroundStyle(.white)
                    .background(
                        Color.black
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    )
                    .padding(20)
            })
        }
    }
    
    func buttonPressed(){
        //backgroundColor = .pink
        count += 1
        backgroundColor = .green
    }
}

#Preview {
    ExtractFunctions()
}

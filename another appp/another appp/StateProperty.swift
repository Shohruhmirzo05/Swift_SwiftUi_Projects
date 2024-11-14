//
//  StateProperty.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 09/07/24.
//

import SwiftUI

struct StateProperty: View {
    @State var backgroundColor = Color.pink
    @State var count: Int = 0
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Text("Our Count is: \(count)")
                    .font(.title)
                Text("World now")
                    .font(.headline)
                
                HStack(spacing: 40){
                    Button("Plus") {
                        count = count + 1
                    }
                    .padding()
                    .padding(.horizontal)
                    .background(.blue)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Button("Minus") {
                        count = count - 1
                        
                    }
                    .padding()
                    .padding(.horizontal)
                    .background(.blue)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
        .foregroundStyle(Color.white)
    }
}

#Preview {
    StateProperty()
}

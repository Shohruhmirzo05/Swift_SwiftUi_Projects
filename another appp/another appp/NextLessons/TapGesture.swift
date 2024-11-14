//
//  TapGesture.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 12/07/24.
//

import SwiftUI

struct TapGesture: View {
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 200)
            Button {
                
            } label: {
                Text("Button")
                
                    .frame(maxWidth: .infinity)
                    .padding()
                
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                    
                    
            }
            
            
            Text("TapGesture")
            
                .frame(maxWidth: .infinity)
                .padding()
            
                .background(.blue)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
//                .onTapGesture {
//                  // just like button, we can put any action here
//                }
                .onTapGesture(count: 3, perform: {
                    // need to tap 3 times to perform action
                })
        }
    }
}

#Preview {
    TapGesture()
}

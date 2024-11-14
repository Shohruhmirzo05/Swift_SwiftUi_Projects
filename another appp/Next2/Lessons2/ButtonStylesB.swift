//
//  ButtonStylesB.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 15/07/24.
//

import SwiftUI

struct ButtonStylesB: View {
    var body: some View {
        VStack{
            Button("Button") {
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            //
            .buttonStyle(.plain)
            
            Button {
                
            } label: {
                Text("Button")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            //
            .buttonStyle(.bordered)
            .controlSize(.mini)
            
            
            Button {
                
            } label: {
                Text("Button")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            //
            .buttonStyle(.borderedProminent)
            
            
            Button {
                
            } label: {
                Text("Button")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            //
            .buttonStyle(.borderless)
            

            
        }.padding()
    }
}

#Preview {
    ButtonStylesB()
}

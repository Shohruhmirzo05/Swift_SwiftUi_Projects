//
//  AnimationUpdated.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 16/07/24.
//

import SwiftUI

struct AnimationMenu: View {
    @State var animate1: Bool = false
    var body: some View {
        Spacer()
        Button("press to animate") {
            animate1.toggle()
        }
        
        Spacer()
        // MENU
        Menu("Click to Open") {
            Button("Btton 1") {}
            Button("Btton 2") {}
            Button("Btton 3") {}
            Button("Btton 4") {}

        }
        
        
        
        Spacer()
        Text("Hello, World!")
            .animation(.spring(), value: animate1)
            .font(animate1 ? .largeTitle : .caption)
        Spacer()
        
        
        // MARK: Value inside the Animation is specifically for which item or smth we gonna animate
        
      
        
    }
}

#Preview {
    AnimationMenu()
}

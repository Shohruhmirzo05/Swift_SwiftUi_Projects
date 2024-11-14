//
//  Animations.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 09/07/24.
//

import SwiftUI

struct Animations: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button(" Button") {
//                withAnimation(Animation.default.delay(2)) {
//                    isAnimated.toggle()
//                }
                withAnimation(Animation.default.repeatForever(autoreverses: true)) {
                    isAnimated.toggle()
                }
                
            }.font(.title)
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 45.0 : 10)
                .fill(isAnimated ? Color.green : Color.pink)
                .frame(
                    width: isAnimated ? 200 : 100,
                    height: isAnimated ? 200 : 100)
                .offset(x: isAnimated ? 50.0: 10)
             
            
            Spacer()
        }
    }
}

#Preview {
    Animations()
}

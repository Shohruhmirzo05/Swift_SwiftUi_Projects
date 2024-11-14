//
//  Transitions.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/07/24.
//

import SwiftUI

struct Transitions: View {
    @State var showView: Bool = true
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button") {
                    withAnimation(.spring()) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
                    //.transition(.scale)
//                    .transition(.asymmetric(
//                        insertion: .move(edge: .bottom),
//                        removal: .scale))
                    //.transition(.opacity)
                    //.animation(.easeInOut(duration: 1), value: showView)
                    
            }
            
                
        }.ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    Transitions()
}

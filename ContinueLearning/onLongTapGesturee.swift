//
//  ContentView.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 17/07/24.
//

import SwiftUI

struct onLongTapGesturee: View {
    
    @State var isComplete: Bool = false
    
    var body: some View {
        VStack {

            Text(isComplete ? "Hellow" : "Buyere")
                .padding(20)
                .frame(maxWidth: .infinity)
                .background(isComplete ? .blue : .gray)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 30)
                .onLongPressGesture (minimumDuration: 2, maximumDistance: 50){
                    isComplete.toggle()
                }

            //.buttonStyle(Butt)

        }
        .padding()
    }
}

#Preview {
    onLongTapGesturee()
}

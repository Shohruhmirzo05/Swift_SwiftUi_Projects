//
//  DragGesturee.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 18/07/24.
//

import SwiftUI

struct DragGesturee: View {
    @State var offSet: CGSize = .zero
    var body: some View {
        ZStack {
            VStack{
                Text("\(offSet.width)")
                Spacer()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 500)
                .offset(offSet)
                .scaleEffect(getScaleAmount())
                .rotationEffect(Angle(degrees: getRotattionEffect()))
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            withAnimation(.spring()) {
                                offSet = value.translation
                            }
                        })
                    
                        .onEnded({ value in
                            withAnimation(.spring()) {
                                offSet = .zero
                            }
                        })
            )
        }
    }
    
    func getScaleAmount() -> CGFloat {
        let max = UIScreen.main.bounds.width / 2
        // abs ---> absolute Value
        let currentAmount = abs(offSet.width)
        let percentage = currentAmount / max
        return 1.0 - min(percentage, 0.5) * 0.5
    }
    
    func getRotattionEffect() -> Double {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = offSet.width
        let percentage = currentAmount / max
        let percentageAsDouble = Double(percentage)
        let maxAngle: Double = 10
        return percentageAsDouble * maxAngle
    }
}

#Preview {
    DragGesturee()
}

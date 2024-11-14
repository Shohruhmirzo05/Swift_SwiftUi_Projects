//
//  AnimationCurves.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/07/24.
//

import SwiftUI

struct AnimationTimingCurves: View {
    @State var isAnimated: Bool = false
    var body: some View {
        Button {
            isAnimated.toggle()
        } label: {
            Text("Press here")
                .foregroundStyle(.white)
                .font(.title2)
                .padding()
                .padding(.horizontal, 30)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .shadow(radius: 10)
                .padding(40)
                
        }
        RoundedRectangle(cornerRadius: 25)
            .frame(
                width: isAnimated ? 300 : 200,
                height: 100
            )
            .animation(.spring(
                response: 1.0,
                dampingFraction: 0.2,
                blendDuration:  0.5
            ), value: isAnimated)
//            .animation(.linear, value: isAnimated)
//        RoundedRectangle(cornerRadius: 25)
//            .frame(
//                width: isAnimated ? 300 : 200,
//                height: 100
//            )
//            .animation(.easeIn, value: isAnimated)
//        RoundedRectangle(cornerRadius: 25)
//            .frame(
//                width: isAnimated ? 300 : 200,
//                height: 100
//            )
//            .animation(.easeInOut, value: isAnimated)
//        RoundedRectangle(cornerRadius: 25)
//            .frame(
//                width: isAnimated ? 300 : 200,
//                height: 100
//            )
//            .animation(.easeOut, value: isAnimated)

    }
}

#Preview {
    AnimationTimingCurves()
}

//
//  GeometryReaderr.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 18/07/24.
//

// UIscreen.main.bounds.width * 0.4 (0.4 size of screen) --->
// iT is useful when your app is not gonna rotate, only in Portrait mode

// geometry.size.width  ---> is adaptable whether your screen rotates or not

import SwiftUI

struct GeometryReaderr: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(0..<20){ index in
                    GeometryReader{ geometry in
                        RoundedRectangle(cornerRadius: 10)
                            .rotation3DEffect(
                                Angle(degrees: getPercentage(geo: geometry) * 40),
                                axis: (x: 0.0, y: 1.0, z: 0.0)
                            )
                    }.frame(width: 300,height: 150)
                        .padding()
                }
            }
        }
    }
    func getPercentage(geo: GeometryProxy) -> Double{
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        return Double( 1 - (currentX / maxDistance))
    }
}

#Preview {
    GeometryReaderr()
}

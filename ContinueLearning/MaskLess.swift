//
//  MaskLess.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 19/07/24.
//

import SwiftUI

struct MaskLess: View {
    
    @State var rating: Int = 1
    
    var body: some View {
        ZStack {
            starView
                .overlay{overlayView}
        }
    }
    
    private var overlayView: some View {
        
            GeometryReader(content: { geometry in
                Rectangle()
                    .fill(LinearGradient(colors: [.red, .pink, .indigo], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
                    
            }).mask(starView)
            .allowsHitTesting(false)
    }
    
    @ViewBuilder private var starView: some View {
        HStack{
            ForEach(1..<6){index in
                Image (systemName: "star.fill")
                    .font(.title)
                    //.foregroundStyle(rating >= index ?  .blue : .gray)
                
                // First Way
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.8)) {
                            rating = index
                    }
                }
            }
        }
        
        
      
    }
}

#Preview {
    MaskLess()
}

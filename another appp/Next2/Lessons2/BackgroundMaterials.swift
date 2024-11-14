//
//  BackgroundMaterials.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 15/07/24.
//

// MARK: TEXT SELECTION


import SwiftUI

struct BackgroundMaterials: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                VStack{
                    Text("SELECT TEXT AND SHARE")
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        
                        .frame(height: 400)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    
                        .textSelection(.enabled)
                    
                        
                }
                
            }
            .background(Image("bedroom")
                .resizable()
                .ignoresSafeArea()
            )
        }
    }
}

#Preview {
    BackgroundMaterials()
}

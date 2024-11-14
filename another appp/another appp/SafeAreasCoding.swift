//
//  SafeAreasCoding.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 09/07/24.
//

import SwiftUI

struct SafeAreasCoding: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                    Text("This is main Title")
                    
                        .font(.title)
                    ForEach(0..<10){ index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 330, height: 200)
                            .shadow(radius: 10)
                            .foregroundColor(.white)
                            .padding()
                    }
            }
            .frame(maxWidth: .infinity)
            
                //.edgesIgnoringSafeArea(.all)
        }
        .background(
            .blue
                //.ignoresSafeArea(.all)
        )
        //.edgesIgnoringSafeArea(.all)
        .ignoresSafeArea(edges: .bottom)
    
        
    }
}
#Preview {
    SafeAreasCoding()
}


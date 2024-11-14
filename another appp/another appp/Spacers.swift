//
//  Spacers.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 21/06/24.
//

import SwiftUI

struct Spacers: View {
    var body: some View {
        HStack{
            Image(systemName: "person")
                
                //.foregroundColor(.blue)
                //.background(.green)
                
            Spacer()
                    Image(systemName: "xmark")
            
        }
        .font(.title)
        .foregroundColor(.blue)
        .padding(.horizontal)
        Spacer()
            
        
    }
}

#Preview {
    Spacers()
}

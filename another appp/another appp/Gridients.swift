//
//  Gridients.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/06/24.
//

import SwiftUI

struct Gridients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                Color.green
               )
        
            .frame(width: 300, height: 300)
            .shadow(color: Color.blue,radius: 10, x: 20, y: 20 )
    }
}

#Preview {
    Gridients()
}

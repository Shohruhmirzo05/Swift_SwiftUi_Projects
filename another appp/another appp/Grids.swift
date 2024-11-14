//
//  Grids.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 08/07/24.
//

import SwiftUI

struct Grids: View {
    
    let column: [GridItem] = [
        
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())

          

        
    ]
    
    var body: some View {
        
        //ScrollView(.horizontal, showsIndicators: false){
            LazyVGrid(columns: column) {
                       ForEach(0..<6){index in
                       Rectangle()
                               .frame(height: 50)
                               .padding()
                       }
       // }
        }
        
        
        LazyVGrid(columns: [GridItem(.flexible(minimum: 20, maximum:30 ))], content: {
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        })
    }
}

#Preview {
    Grids()
}

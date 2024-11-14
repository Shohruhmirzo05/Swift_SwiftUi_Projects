//
//  Frames.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 18/06/24.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.green)
            //.frame(width: 150, height: 200, alignment: .center)
            
            //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .frame(width: 150, height: 100, alignment: .topTrailing)
            .background(Color.red)
            .frame(width: 170, height: 120, alignment: .topLeading)
            .background(Color.yellow)
            .frame(width: 200, height: 300, alignment: .bottomLeading)
            .background(Color.blue)
            .frame(maxWidth: .infinity, maxHeight: 500, alignment: .top)
            .background(Color.orange)
            
       // Image(._4KDesktop)
            //.resizable()
            //.frame(width: 300, height: 200)
            //.frame(width: 400, height: 210)
            //.background(Color.green)
            
    }
    
    
}

#Preview {
    Frames()
}

//
//  Icons.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 16/06/24.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        
        //Image(systemName: "heart.fill")
            //.font(.largeTitle)
           // .font(.system(size: 200))
           // .resizable()
            //.aspectRatio(contentMode: .fit)
          //  .foregroundColor(.red )
            //.frame(width: 200, height: 200)
        //Image(systemName: "star")
        //Image(systemName: "moonrise")
            //.resizable()
            //.frame(width: 200, height: 200)
            
        Image(systemName: "folder.badge.plus")
            .renderingMode(.original)
            .font(.system(size: 50))
            .foregroundColor(.blue)
    }
}

#Preview {
    Icons()
}

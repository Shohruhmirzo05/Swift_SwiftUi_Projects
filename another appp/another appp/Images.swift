//
//  Images.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 17/06/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
       
        Image("google")
            //.renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            //.aspectRatio(contentMode: .fill )
            .scaledToFill()
        // Aspect ratio and Scale to fit/fill same thing
            .frame(width: 300, height:200)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            //.clipped()
            //.cornerRadius(30)
           // .clipShape(
                //Circle()
            // RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                //Ellipse()
              //  Circle()
            //)
        
        
    
        
        //Image("4kDesktop")
          //  .frame(height: 200)
    }
}



#Preview {
    Images()
}

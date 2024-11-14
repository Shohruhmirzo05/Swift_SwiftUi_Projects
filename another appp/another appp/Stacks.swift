//
//  Stacks.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 19/06/24.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        
        // VStack - Vertical Stacks
        // HStack - Horizontal Stacks
        // ZSctack - Z index Stacks
        
//        VStack(alignment: .trailing , spacing: 70 ,content: {
//            
//        
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 150, height: 100)
//            
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 130, height: 100)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        })
//        
        
        
        ZStack{
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 300, height: 600)
            
           // Rectangle()
                //.frame(width: 200, height: 400)
            VStack{
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                
                HStack{
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 100, height: 120)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 30, height: 30)
                }
                .background(Color.white)
            } .background(Color.black)
            
        }
        
        
    }
}

#Preview {
    Stacks()
}

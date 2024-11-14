//
//  Background,Overlay.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 18/06/24.
//

import SwiftUI

struct Background_Overlay: View {
    var body: some View {
       /* Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(
            
             Circle()
                .fill(Color.yellow)
                .frame(width: 200, height: 200)
               // .background(Color.blue)
                .frame(width: 250, height: 250)
                .background(Color.red)
            )
            .background(
            Circle()
                
                .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .frame(width: 300, height: 300)
            
            )*/
        
       /* Circle()
            .fill(Color.pink)
            .frame(width: 200)
            .overlay(
                Text("Hello")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
            )
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(Color.blue)
            .frame(maxWidth: 300, maxHeight: 300)
            .overlay(
              Rectangle()
                .fill(Color.pink)
                .frame(width: 200, height: 200, alignment: .top)
              
                .overlay(
                    Circle()
                        .fill(Color.green)
                    //.background(Color.yellow)
                    .frame(width: 100, height: 100)
                    
                    .overlay(Rectangle()
                        .fill(Color.white)
                        .frame(width: 50, height: 50)
                            )
                    
                        )
                
             , alignment: .topLeading
                )
    */
        
        
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 50))
            .background(
                
                Circle()
                    
                    .fill(
                        LinearGradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5379734635, green: 0.007769660559, blue: 0.8095094562, alpha: 1))],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                        )
                
                    .frame(width: 200, height: 200)
                    .shadow(color: Color(#colorLiteral(red: 0.8472167253, green: 0.2053397298, blue: 0.8379545808, alpha: 0.5144350166)), radius: 20)
                    .overlay(
                       Circle()
                           .fill(Color.blue)
                           .frame(width: 80, height: 50)
                           .overlay(
                           Text("25")
                            .font(.headline)
                            .foregroundColor(.white)
                           )
                           .shadow(color: Color(#colorLiteral(red: 0.8472167253, green: 0.2053397298, blue: 0.8379545808, alpha: 0.5144350166)), radius: 10, x: 5, y: 5)
                       , alignment: .bottomTrailing
                       
                       
                    
                    )
                
               
               
                

            )
            

    }
    
}

#Preview {
    Background_Overlay()
}


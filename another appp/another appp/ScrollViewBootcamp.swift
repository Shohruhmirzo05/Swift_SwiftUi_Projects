//
//  ScrollViewBootcamp.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 08/07/24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        //                                           .frame(width: 200, height: 200)
        //                                           .shadow(radius: 10)
        //                                           .padding(30)
        //                                           .foregroundColor(.white)
        
        ScrollView(.vertical, showsIndicators: false){
            LazyVStack{
                ForEach(0..<10){ index in
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        LazyHStack{
                            ForEach(0..<20){
                                index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .frame(width: 200, height: 200)
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                    .padding(40)
                            }
                            
                        }
                    }
                }
            }
        }
        
        
        
    }
}

#Preview {
    ScrollViewBootcamp()
}

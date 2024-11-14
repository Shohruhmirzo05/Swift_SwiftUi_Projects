//
//  SafeAreAInsets.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 16/07/24.
//

import SwiftUI

struct SafeAreAInsets: View {
    var body: some View {
        
            NavigationStack{
                
                // Group works like h, V, Z Stack to group Items
                Group{
                   
                    ScrollView{
                        ForEach(0..<30){ smth in
                            RoundedRectangle(cornerRadius: 40, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                                .frame(width: 300, height: 200)
                        }
                    }.scrollIndicators(.hidden)
                        
                }.navigationTitle("Safe Area Insets")
                    .navigationBarTitleDisplayMode(.inline)
                    .safeAreaInset(edge: .top) {
                        Text("THis is inset")
                        // can be usefuel to pin something,
                        // we csn to it bottom as well
                            .background(.yellow)
                            //.ignoresSafeArea()
                    }
            
        }
    }
}

#Preview {
    SafeAreAInsets()
}

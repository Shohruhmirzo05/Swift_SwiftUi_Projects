//
//  tabView.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 13/07/24.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        
        TabView{
            mainSection()
                .tabItem {
                    Label("Home", systemImage: "house")
                        .foregroundStyle(.white)
                }
            
            ProfileBody()
                .tabItem {
                    Label("Reels", systemImage: "play.square.stack")
                        .foregroundStyle(.white)
                }
                
            Reels()
                .tabItem {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "plus")
                                
                        })
                    
                }
            ProfileBody()
                .tabItem {
                    Label("Reels", systemImage: "play.rectangle")
                        .foregroundStyle(.white)
                }
            ProfileBody()
                .tabItem {
                    Label("Reels", systemImage: "s.circle")
                        .foregroundStyle(.white)
                }
        }
         
        
    }
}

#Preview {
    tabView()
}

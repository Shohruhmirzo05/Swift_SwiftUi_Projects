//
//  Badgess.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 15/07/24.
//

import SwiftUI

// List
// Tab View

struct Badgess: View {
    var body: some View {
        TabView {
            Text("")
                .tabItem {
                    Image(systemName: "heart.circle")
                        .font(.title)
                    Text("Hello")
                }
            Text("")
                .tabItem {
                    Image(systemName: "flame.circle")
                        .font(.title)
                        .foregroundStyle(.red)
                        
                    Text("Flame")
                }
                .badge(10)
            
            Text("")
                .tabItem {
                    Image(systemName: "person.circle")
                        .font(.title)
                        .foregroundStyle(.red)
                    Text("Profile")
                }
                .badge(24)
            
        }.tint(.red)
    }
}

#Preview {
    Badgess()
}

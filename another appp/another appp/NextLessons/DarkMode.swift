//
//  DarkMode.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 12/07/24.
//

import SwiftUI

struct DarkMode: View {
    @Environment (\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This color is SECONDAY")
                        .foregroundStyle(.secondary)
                    Text("This color is BLACK")
                        .foregroundStyle(.black)
                    Text("This color is WHITE")
                        .foregroundStyle(.white)
                    Text("This is CUSTOM COLOR")
                        .foregroundStyle(Color("NextCustomColor"))
                    Text("this is Color SCHEME")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
        }
    }
}

#Preview {

        DarkMode()
            .preferredColorScheme(.dark)
      
    
}

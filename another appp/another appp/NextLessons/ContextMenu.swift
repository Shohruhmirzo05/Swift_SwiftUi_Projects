//
//  ContextMenu.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 12/07/24.
//

import SwiftUI

struct ContextMenu: View {
    //@State var contextSheet
    @State var backgroundChange: Bool = false
    @State var backgroundColor: Color = .indigo
    var body: some View {
        
        ZStack {
            Color.pink.ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20){
                Image(systemName: "house.fill")
                    .font(.title)
                    .shadow(radius: 10)
                Text("WElcome")
                    .font(.title)
                    .shadow(radius: 10)
                Text("hello to the world in the world")
                    .font(.headline)
                    .shadow(radius: 10)
            }.foregroundStyle(.white)
                .padding()
                .padding(.horizontal, 30)
                .background(backgroundColor)
                .shadow(radius: 20)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .contextMenu(menuItems: {
                Button {
                    backgroundChange.toggle()
                    if backgroundChange {
                        backgroundColor = .red
                    }
                } label: {
                    Label("press to red", systemImage: "heart")
                }

                Button {
                    backgroundChange.toggle()
                    if backgroundChange {
                        backgroundColor = .orange
                    }
                } label: {
                    Label("press to orange", systemImage: "flame")
                }
                Button {
                    backgroundChange.toggle()
                    if backgroundChange {
                        backgroundColor = .green
                    }
                } label: {
                    Label("press to green", systemImage: "tree")
                }
            })
        }
        
    }
    
    
}

func backgroundChanger() {
   
}

#Preview {
    ContextMenu()
}

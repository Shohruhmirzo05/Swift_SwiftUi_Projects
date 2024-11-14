//
//  ToolbarB.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 16/07/24.
//

import SwiftUI

struct ToolbarB: View {
    @State private var pathNav: [String] = ["hh", "eded"]
    var body: some View {
        NavigationStack(path: $pathNav){
            ZStack{
                Color.indigo.ignoresSafeArea()
                
                ScrollView(){
                    Text("HEYYY")
                        .foregroundStyle(.white)
                        .font(.title)
                    
                    ForEach(0..<20){ re in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 300, height: 200)
                            .foregroundStyle(.ultraThinMaterial)
                    }
                }
                .scrollIndicators(.hidden)
                
            }
            .navigationTitle("Toolbar")
            .toolbar{
                ToolbarItem (placement: .topBarTrailing){
                    Image(systemName: "house")
                }
                ToolbarItem (placement: .topBarLeading){
                    Image(systemName: "person.circle")
                }
            }
            //.toolbarRole(.editor)
           // .toolbar(.hidden, for: .navigationBar)
            //.toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("screen 1"){
                    pathNav.append("Screen1")
                }
                Button("screen 2"){
                    pathNav.append("Secreen2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen ")
               
            }
            .navigationDestination(for: String.self) { value in
                Text("Another")
               
            }
            
        }
    }
}

#Preview {
    ToolbarB()
}

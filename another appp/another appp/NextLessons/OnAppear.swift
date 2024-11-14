//
//  OnAppear.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 12/07/24.
//

import SwiftUI

struct OnAppear: View {
    @State var count: Int = 0
    var body: some View {
        NavigationStack{
            ScrollView{
                
                LazyVStack {
                    ForEach (0..<50){ _ in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    }
                }
                    
            }//.navigationTitle("hello")
               .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    Text("Title: \(count)")
                        .font(.title)
                }
            }
                
        }
    }
}

#Preview {
    OnAppear()
}

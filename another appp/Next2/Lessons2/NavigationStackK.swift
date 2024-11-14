//
//  NavigationStackK.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 16/07/24.
//

// MARK: NOT REALLY UNDESTAND

import SwiftUI

struct NavigationStackK: View {
    let furits: [String] = [
    "apple", "Banana", "Pinapple"
    ]
    var body: some View {
        NavigationStack {
            NavigationLink("second screen") {
                
            }
            
            // MARK: NavigationStack(path: $binding){}
            // this code helps to bind and make the navigation work for certain type of types
            // example: string, int ...
            
//            ForEach(0..<4){
//                NavigationLink(value: fruits) {
//                    
//                }
            }
          
       // }
        .navigationDestination(for: Int.self) { name in
            nnavnbext(name: name)
        }
    }
}

struct nnavnbext: View {
    let name: Int
    var body: some View {
       Text("")
    }
}

#Preview {
    NavigationStackK()
}

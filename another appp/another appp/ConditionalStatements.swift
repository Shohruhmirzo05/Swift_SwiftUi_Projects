//
//  ConditionalStatements.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 09/07/24.
//

import SwiftUI

struct ConditionalStatements: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    var body: some View {
        VStack{
            
            Button("Is Loading: \(isLoading.description)"){
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
//            Button("Press to Circle: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            Button("Press to Rectangle \(showRectangle.description)"){
//                showRectangle.toggle()
//            }
//            if showCircle == true {
//                Circle()
//                    .frame(width: 100)
//                    
//            } else if showRectangle{
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 100, height: 100)
//            }
            Spacer()
           
        }
    }
}

#Preview {
    ConditionalStatements()
}

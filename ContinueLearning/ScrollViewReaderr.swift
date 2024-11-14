//
//  ScrollViewReaderr.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 18/07/24.
//

import SwiftUI

struct ScrollViewReaderr: View {
    
    @State var indexNumber: Int = 0
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            
            TextField("type to move", text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.3))
                .padding()
                .keyboardType(.numberPad)
//                .onSubmit() {
//                    withAnimation(.easeInOut) {
//                        if var index = Int(textFieldText){
//                            indexNumber = index
//                        }
//                    }
//                }
                
            Button("click to scroll"){
                withAnimation(.easeInOut) {
                    if let index = Int(textFieldText){
                        indexNumber = index
                    }
                }
                
            }
                ScrollViewReader{proxy in
                    
                    if #available(iOS 17.0, *) {
                        ForEach(0..<50){index in
                            Text("This is item number: \(index)")
                                .containerRelativeFrame(.vertical, count: 3, spacing: 1)
                                
                                .padding(60)
                                .background()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(radius: 10)
                                .padding()
                                .id(index)
                        }
                        
                        .onChange(of: indexNumber) {
                            withAnimation(.spring()) {
                                proxy.scrollTo(indexNumber, anchor: .top)
                            }
                        }
                    } else {
                        // Fallback on earlier versions
                    }
                    
                }
            
        }
    }
}

#Preview {
    ScrollViewReaderr()
}

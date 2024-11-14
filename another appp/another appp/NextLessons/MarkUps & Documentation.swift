//
//  MarkUps & Documentation.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 12/07/24.
//

import SwiftUI

struct MarkUps___Documentation: View {
    
    // MARK: PROPERTIES
    
    @State var showCustomAlert: Bool = false
    @State var custimData: [String] = [
    "orange", "yellow", "green", "blue", "red"
    ]
    
    // MARK: BODY
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        ForEach(custimData, id: \.self) { custom in
                            Button {
                                
                            } label: {
                                Text(custom)
                                    .font(.title)
                            }

                        }
                    }
                }
            }//.navigationTitle("THis is title")
                
               // .navigationBarTitleDisplayMode(.inline)
//                .toolbar{
//                    ToolbarItem(placement: .topBarLeading) {
//                        Image(systemName: "xmark")
//                            .font(.title)
//                    }
//                    ToolbarItem(placement: .topBarTrailing) {
//                        Image(systemName: "house")
//                            .font(.title)
//                    }
//                }
            
            .navigationBarTitleDisplayMode(.inline) // Use inline mode for customizations
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                VStack {
                                    Text("Custom Title")
                                        .font(.title) // Customize font size
                                        .foregroundColor(.green) // Customize font color
                                        .fontWeight(.bold) // Customize font weight
                                }
                            }
                            ToolbarItem(placement: .topBarLeading) {
                                                    Image(systemName: "xmark")
                                                        .font(.title)
                                                        .foregroundColor(.blue)
                                                }
                                                ToolbarItem(placement: .topBarTrailing) {
                                                    Button {
                                                     showCustomAlert.toggle()
                                                    } label: {
                                                        Image(systemName: "house")
                                                            .font(.title)
                                                            .foregroundColor(.blue)
                                                    }.alert("Home button Alert", isPresented: $showCustomAlert) {
                                                        
                                                    } message: {
                                                        Text("fuck you")
                                                    }

                                                    
                                                }
                        }
            
        }
    }
 // MARK: FUNCTIONS
    
}


// MARK:  PREVIEW
#Preview {
    MarkUps___Documentation()
}

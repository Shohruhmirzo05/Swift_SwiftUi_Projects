//
//  SheetsFullScreenANDcover.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/07/24.
//

import SwiftUI

struct secondShowScreen: View {
    @State var showSheetButton: Bool = false
    
    // Binding is important to link
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green
            ZStack {
                Button {
                    // To Dissmiss the Sheet
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .padding(.leading, 20)
                        .padding(.top, 40)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                }

                VStack {
                    Text("Wussup Everybody")
                                    .font(.title)
                                    .fontWeight(.bold)
                                .foregroundStyle(.white)
                    Button {
                                                 
                                              } label: {
                                                  Text("Welcome")
                                                      .font(.title)
                                                      .fontWeight(.bold)
                                                      .padding()
                                                      .padding(.horizontal)
                                                      .foregroundStyle(.white)
                                                      .background(.blue)
                                                      .clipShape(RoundedRectangle(cornerRadius: 10))
                                                      .padding()
                                                      .shadow(radius: 10)
                                              }
                                             
                }
                          
                
            }
            
            

            
        }.ignoresSafeArea()
    }
}

#Preview {
    secondShowScreen()
}

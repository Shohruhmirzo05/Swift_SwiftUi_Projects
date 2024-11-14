//
//  SheetsFullScreenANDcover.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/07/24.
//

import SwiftUI

struct SheetsFullScreenANDcover: View {
    @State var showSheetButton: Bool = false
    var body: some View {
        ZStack{
            Color.pink
            VStack {
                Text("- > Press the button")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            Button {
                                showSheetButton = true
                            } label: {
                                Text("Button")
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
//                            .sheet(isPresented: $showSheetButton, content: {
//                                secondShowScreen()
//                            })
                
                //Binding
                            .fullScreenCover(isPresented: $showSheetButton, content: {
                                // DO NOT ADD CONDITIONAL LOGIC
                                secondShowScreen()
                            })
            }
            

            
        }.ignoresSafeArea()
    }
}

#Preview {
    SheetsFullScreenANDcover()
}

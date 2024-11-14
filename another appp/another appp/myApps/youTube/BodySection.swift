//
//  BodySection.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 13/07/24.
//

import SwiftUI

struct BodySection: View {
//    @State var cardViews:
    @State var searchButton: Bool = false
    @State var searchText: String = ""
    var body: some View {
        
        VStack {
            if searchButton {
                TextField("search videos", text: $searchText)
                    .padding()
                    .background(.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .font(.headline.bold() )
                    .foregroundStyle(.red)
            }
            ForEach(0..<20){ index in
                VStack{
                    //pressSearchButton()
    //                headerSection()
                   
                    Button {
                        
                    } label: {
                        Image("youtube1")
                            .resizable()
                            .frame(height: 250)
                    }

                  
                    HStack{
                        Button {
                            
                        } label: {
                            Circle()
                                .foregroundStyle(.green)
                                .frame(width: 50)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                        }

                        
                    }
            
                }
            }.padding(.top)
        }
    }
}

#Preview {
    BodySection()
}

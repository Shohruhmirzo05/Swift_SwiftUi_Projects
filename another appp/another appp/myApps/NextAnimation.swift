//
//  NextAnimation.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/07/24.
//

import SwiftUI

struct NextAnimation: View {
    
    @State var clickNext: Bool = false
    @State var clickBack: Bool = false
    //@State var clickBack: Bool = false
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            HStack{
                if !clickNext {
                    Button {
                        withAnimation {
                            clickNext.toggle()
                        }
                        
                            
                    } label: {
                        withAnimation {
                            Text("Back")
                                //.transition(.move(edge: .trailing))
                                                        .font(.title2)
                                                        .foregroundStyle(.white)
                                                        
                                                        .padding()
                                                        .padding(.horizontal, 30)
                                                        .background(.blue)
                                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }.transition(.move(edge: .leading))
                }
                    Button {
                        withAnimation {
                            clickNext.toggle()
                        }
                                                } label: {
                                                    withAnimation {
                                                        Text("Next")
                                                            .font(.title2)
                                                            .foregroundStyle(.white)
                                                            .padding()
                                                            .padding(.horizontal, clickNext ? 100 : 30)
                                                            .background(.blue)
                                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                                    }
                                    }
                

            }
        }
    }
}

#Preview {
    NextAnimation()
}

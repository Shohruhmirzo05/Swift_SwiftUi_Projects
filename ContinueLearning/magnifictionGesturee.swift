//
//  magnifictionGesturee.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 18/07/24.
//

import SwiftUI

struct magnifictionGesturee: View {
    @State var currentAmount: CGFloat = 0
    @State var lastAmount: CGFloat  = 0
    var body: some View {
//        Text("Hellow" )
//            .padding(20)
//            .frame(maxWidth: .infinity)
//            .background(.blue )
//            .foregroundStyle(.white)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .padding(.horizontal, 30)
//            .scaleEffect(1 + currentAmount + lastAmount)
//            .gesture(
//            MagnificationGesture()
//                .onChanged({ value in
//                    currentAmount = value - 1
//                })
//                .onEnded({ value in
//                    lastAmount += currentAmount
//                    currentAmount = 0
//                })
//                )
        
        NavigationStack {
            ScrollView{
                VStack{
                    HStack{
                        Circle()
                            .frame(width: 40, height: 40)
                            
                        Text("SwiftFul Thinking ")
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Rectangle()
                        .frame(height: 300)
                        .scaleEffect(1 + currentAmount)
                        .gesture(
                        MagnificationGesture()
                            .onChanged({ value in
                                currentAmount = value - 1
                            })
                            .onEnded({ value in
                                withAnimation(.easeInOut) {
                                    currentAmount = 0
                                }
                            })
                        )
                    HStack{
                        Image(systemName: "heart.fill")
                        Image(systemName: "text.bubble.fill")
                    }.font(.title)
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Follow me and like th post please")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
                
                .navigationTitle("Instagram")
                    .padding(.vertical)
                    
                    
                    
            }
          
        }
    }
}

#Preview {
    magnifictionGesturee()
}

//
//  DragGesture2.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 18/07/24.
//

import SwiftUI

struct DragGesture2: View {
    
    @State var startingPint: CGFloat = UIScreen.main.bounds.height * 0.84
    @State var currentDragOffsetY: CGFloat = 0
    @State var endingOffsetY: CGFloat = 0
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
           
            MySignUpView()
                .offset(y: startingPint)
                .offset(y: currentDragOffsetY)
                .offset(y: endingOffsetY)
                .gesture(
                DragGesture()
                    .onChanged{value in
                        withAnimation(.spring()) {
                            currentDragOffsetY = value.translation.height
                        }
                    }
                    .onEnded({ value in
                        withAnimation(.spring()) {
                            if currentDragOffsetY < -150 {
                                endingOffsetY = -startingPint
                                
                               
                            }else if endingOffsetY != 0 && currentDragOffsetY > 150 {
                                endingOffsetY = 0
                               
                            }
                            currentDragOffsetY = 0
                        }
                       
                        
                    })
                )
          }
    }
}

#Preview {
    DragGesture2()
}

struct MySignUpView: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(.white)
            .ignoresSafeArea(edges: .bottom)
            .frame(maxHeight: .infinity)
        
        VStack  {
            Image(systemName: "chevron.up")
                .font(.title)
                .padding(.top)
                
            Text("Sign Up")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top)
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .padding(.top)
            Text("This is description for app, best swift ui file, somehting and aanother thing which is headline and extrahorizontal padding")
                .multilineTextAlignment(.center)
                .padding()
            Text("Create Account")
                .padding()
                .padding(.horizontal, 30)
                .background(.black)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Spacer()
        }
    }
}

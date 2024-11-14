//
//  RepeatingSheet.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/07/24.
//

import SwiftUI

struct RepeatingSheet: View {
    @State var openSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            
            VStack{
                Button(action: {
                    withAnimation {
                        openSheet.toggle()
                    }
                    
                }, label: {
                    Text("Click to Open")
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 10)
                })
            }
            // METHOD --->  2 - WITH TRANSITION
            
//            ZStack{
//                if openSheet {
//                              RepeatingSheet22(showFirstScreen: $openSheet )
//                                  .padding(.top, 60)
//                                  .transition(.move(edge: .bottom))
//                                  .animation(.spring, value: openSheet)
//                          }
//            }.zIndex(1.0)
            
            RepeatingSheet22(showFirstScreen: $openSheet)
                .padding(.top, 70)
                .offset(y: openSheet ? 0 : UIScreen.main.bounds.height)
          
        }
        
       //   METHOD ----> 3
        

        
        
        // METHOD ---> 1 - WITH SHEET
//        .sheet(isPresented: $openSheet, content: {
//            RepeatingSheet22()
//        })
        
        // METHOD --->  2 - WITH TRANSITION
        
     
    }
}

#Preview {
    RepeatingSheet()
}

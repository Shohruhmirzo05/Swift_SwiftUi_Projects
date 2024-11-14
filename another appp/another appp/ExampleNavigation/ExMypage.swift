//
//  ExMypage.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 11/07/24.
//

import SwiftUI

struct ExMypage: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.pink.ignoresSafeArea()

            ScrollView {
                VStack {
                    Circle()
                        .overlay(
                            Image(systemName: "person")
                                .foregroundStyle(.white)
                                .font(.system(size: 100))
                        )
                        .frame(maxWidth: 200, maxHeight: .infinity, alignment: .top)
                        .frame(maxWidth: .infinity)
                    .foregroundStyle(.green)
                    
                    .padding(.top, 100)
                    
                }
                NavigationLink(destination: {
                    ExNavigation().navigationBarBackButtonHidden()
                }, label: {
                  Image(systemName: "chevron.backward.circle")
                        .font(.system(size: 50))
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.leading, 30)
                        .padding(.top, 8)
                })
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background()
                    
                    .offset(y: UIScreen.main.bounds.height * 0.49)
                    
            }
         

           
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.system(size: 30))
                    .padding()
            }
        }
        
        //Color.red.ignoresSafeArea()
        
//            ScrollView{
//                VStack{
//                    Circle()
//                }
//            }
        
        
        
    }
}

#Preview {
    ExMypage()
}

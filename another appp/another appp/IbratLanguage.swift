//
//  IbratLanguage.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/07/24.
//
// .offset(y: max(0, -geometry.frame(in: .global).minY))

import SwiftUI

struct IbratLanguage: View {
    var body: some View {
      
        
            ScrollView{
                ZStack(alignment: .bottom){
                                
                                VStack {
                                    VStack {
                                        HStack {
                                            Button {
                                                
                                            } label: {
                                                Image(systemName: "person")
                                                    .foregroundStyle(.blue)
                                                    .font(.system(size: 40))
                                                    .padding(.leading, 20)
                                            }
                                   Spacer()
                                            Button {
                                                
                                            } label: {
                                                Image(systemName: "bell.badge")
                                                    .foregroundStyle(.blue)
                                                    .font(.system(size: 30))
                                                    .padding(.trailing, 20)
                                            }
                                        }
                                        .frame(maxHeight: .infinity, alignment: .top)
                                        //Text("hello")
                                            
                                    }
                                }//.padding(.leading)
                                
                                VStack {
                                    Text("Salom Shohruhmirzo")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 20)
                                        .padding(.bottom, 10)
                                    Text("Bugun nimani o'rganmoqchisiz ?")
                                        .font(.title3)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 20)
                                   
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .frame(maxWidth: 350, maxHeight: 200)
                                        .foregroundStyle(.orange)
                                        .overlay(
                                            HStack {
                                                VStack{
                                                    RoundedRectangle(cornerRadius: 10.0)
                                                        .frame(maxWidth: 120, maxHeight: 40, alignment: .topLeading)
                                                        
                                                        .foregroundStyle(.white)
                                                        .opacity(0.3)
                                                        .overlay(
                                                        Text("Yakunlandi")
                                                            .foregroundStyle(.white)
                                                            .font(.subheadline)
                                                            .fontWeight(.bold)
                                                        )
                                                        .frame(maxWidth: .infinity, alignment: .leading)
                                                        .padding(.top, 5)
                                                        
                                                        
                                                        //.frame(maxWidth: .infinity, maxHeight: .infinity)
                                                        
                                                    Text("Ibrat Marafon")
                                                        .font(.title2)
                                                        .foregroundStyle(.white)
                                                        .fontWeight(.bold)
                                                        .padding(.top)
                                                        .padding(.bottom, 1)
                                                        .frame(maxWidth: .infinity, alignment: .leading)
                                                    
                                                    Text("Londonga 7 kunlik ")
                                                        .font(.caption)
                                                        .foregroundStyle(.white)
                                                        .fontWeight(.bold)
                                                        .frame(maxWidth: .infinity, alignment: .leading)
                                                        
                                                    Text("sayohat yo'llanmasini qo'lga kiriting")
                                                        .foregroundStyle(.white)
                                                        .font(.caption2)
                                                        .frame(maxWidth: .infinity, alignment: .leading)
                                                        .padding(.top, 1)
                                                }
                                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                                .padding()
                                                
                                                Image("cupChild")
                                                    .resizable()
//                                                    .aspectRatio(contentMode: .fill)
//                                                    .frame(height: UIScreen.main.bounds.width / 4 * 3)
//                                                    .clipped()
                                            }
                                            
                                        )
                                    Text("Barcha kurslar")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 20)
                                        .padding(.top, 40)
                                }
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                .padding(.top, 70)
                                //.padding(.leading)
                             // Spacer()
                               
                                Rectangle()
                                    .frame(width: .infinity, height: UIScreen.main.bounds.height * 0.1)
                                    .frame(maxHeight: .infinity, alignment: .bottom)
                                    .opacity(0.07)
                                    //.background(Color.red)
                                    //.offset(x: 0, y: 10)
                                
                              
                            }
                            .ignoresSafeArea(edges: .bottom)
            }
//            .aspectRatio(contentMode: .fill)
//            .frame(height: UIScreen.main.bounds.width / 4 * 3)
//            .clipped()
            
        
    }
}

#Preview {
    IbratLanguage()
}

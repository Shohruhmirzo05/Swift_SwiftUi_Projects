//
//  BedroomPage.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 21/06/24.
//

import SwiftUI

struct BedroomPage: View {
    var body: some View {
        
    Image("bedroom2")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
            .overlay(
                //Text("hello world")
                           //.foregroundColor(.white)
                
                VStack{
                    HStack{
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                            .font(.title)
                        
                        Spacer()
                        Text("Bedroom")
                            .foregroundColor(.white)
                            .font(.headline)
                        Spacer()
                        Image(systemName: "moon")
                            .foregroundColor(.white)
                            .font(.title)
                    }.padding(.horizontal)
                        .padding(.top, 30)
                    Spacer()
                        
                    HStack{
                        Rectangle()
                            .cornerRadius(30)
                            .opacity(0.7)
                            .overlay(
                                HStack{
                                    Text("42%")
                                                                    .font(.largeTitle)
                                                                    .fontWeight(.semibold)
                                                                    .foregroundColor(.white)
                                                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                                                    .padding()
                                    Image(systemName: "drop")
                                        .foregroundColor(.white)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .frame( maxHeight: .infinity, alignment: .topTrailing)
                                        .padding(.trailing, 20)
                                        .padding(.top, 20)
                                    
                                }
                                
                            )
                            .overlay(
                            Text("Something which is ")
                                .foregroundColor(.white)
                                //.font(.subheadline)
                                .frame(maxWidth: 100)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 8)
                                .padding(.top, -40)
                            
                            )
                           
                           // .background(Color.black)
                            .foregroundColor(.black)
                            .shadow(radius: 20)
                            
                        Rectangle()
                            .cornerRadius(30)
                            .opacity(0.7)
                            .overlay(
                            Text("hello")
                                .foregroundColor(.white)
                                //.frame(alignment: .leading)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                .padding()
                                .font(.title)
                            )
                    }.frame(width: 350, height: 220)
                        .foregroundColor(.black)
                    .shadow(radius: 20)
                       
                    
                        Rectangle()
                                                .frame(maxWidth: 350, maxHeight: 140)
                                                    //.foregroundColor(.white)
                                                    .cornerRadius(30)
                                                    .shadow(radius: 20)
                                                    .padding(.bottom, 60)
                                                    .padding(.top)
                                                    .cornerRadius(30)
                                                   // .overlay(ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/))
                                                    .foregroundColor(.black)
                                                    .shadow(radius: 20)
                                                    .opacity(0.7)
                    
                    
                }

            )
        
       

    }
}

#Preview {
    BedroomPage()
}

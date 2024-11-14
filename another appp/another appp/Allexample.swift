//
//  Allexample.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 19/06/24.
//

import SwiftUI

struct Allexample: View {
    var body: some View {
        VStack(content: {
            
            Text("Products")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 40)
                .foregroundColor(.blue)
            
            HStack(spacing: 20,content: {
                Image("futbolka")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding([.leading, .trailing], 20)
                VStack{
                    Text("Futbolka - men, Foldsack - no")
                        .font(Font.system(size: 20, design: .serif))
                        .fontWeight(.bold)
                        
                    
                    Text("$ 109.10")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.green)
                        .frame(width: 160 ,alignment: .leading)
                    RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .fill(Color.blue)
                        .frame(width: 160, height: 30)
                        .overlay(
                        Text("Men's Clothing")
                            .font(Font.system(size: 17, design: .serif))
                            .foregroundColor(.white)
                        )
                }
                .frame(width: 200 , alignment: .topLeading)
                
                
            })
            HStack(spacing: 20,content: {
                Image("koynak1")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding([.leading, .trailing], 20)
                VStack{
                    Text("Casual Premium Dress for girls")
                        .font(Font.system(size: 20, design: .serif))
                        .fontWeight(.bold)
                        
                    
                    Text("$ 55.70")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.green)
                        .frame(width: 160 ,alignment: .leading)
                    RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .fill(Color.blue)
                        .frame(width: 160, height: 30)
                        .overlay(
                        Text("Men's Clothing")
                            .font(Font.system(size: 17, design: .serif))
                            .foregroundColor(.white)
                        )
                } .frame(width: 200 , alignment: .topLeading)
            })
            HStack(spacing: 20,content: {
                Image("koynak2")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding([.leading, .trailing], 20)
                VStack{
                    Text("Women's Cotton Dress with preimum design")
                        .font(Font.system(size: 20, design: .serif))
                        .fontWeight(.bold)
                       
                    
                    Text("$ 149.99")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.green)
                        .frame(width: 160 ,alignment: .leading)
                    RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .fill(Color.blue)
                        .frame(width: 160, height: 30)
                        .overlay(
                        Text("Men's Clothing")
                            .font(Font.system(size: 17, design: .serif))
                            .foregroundColor(.white)
                        )
                } .frame(width: 200 , alignment: .topLeading)
            })
            HStack(spacing: 20,content: {
                Image("hoodie")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding([.leading, .trailing], 20)
                VStack{
                    Text("Futbolka - men, Foldsack - no")
                        .font(Font.system(size: 20, design: .serif))
                        .fontWeight(.bold)
                        
                    
                    Text("$ 99.99")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.green)
                        .frame(width: 160 ,alignment: .leading)
                    RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .fill(Color.blue)
                        .frame(width: 160, height: 30)
                        .overlay(
                        Text("Men's Clothing")
                            .font(Font.system(size: 17, design: .serif))
                            .foregroundColor(.white)
                        )
                } .frame(width: 200 , alignment: .topLeading)
            })
            HStack(spacing: 20,content: {
                Image("jumper")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding([.leading, .trailing], 20)
                VStack{
                    Text("Futbolka - men, Foldsack - no")
                        .font(Font.system(size: 20, design: .serif))
                        .fontWeight(.bold)
                        
                    
                    Text("$ 109.99")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.green)
                        .frame(width: 160 ,alignment: .leading)
                    RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .fill(Color.blue)
                        .frame(width: 160, height: 30)
                        .overlay(
                        Text("Men's Clothing")
                            .font(Font.system(size: 17, design: .serif))
                            .foregroundColor(.white)
                        )
                } .frame(width: 200 , alignment: .topLeading)
            })
        })
        .frame(width: 380, alignment: .leading)
    }
}

#Preview {
    Allexample()
}

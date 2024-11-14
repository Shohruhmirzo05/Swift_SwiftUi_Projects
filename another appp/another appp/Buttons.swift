//
//  Buttons.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 09/07/24.
//

import SwiftUI

struct Buttons: View {
    @State var someTitle: String = "Hello Button"
    var body: some View {
        
        VStack{
            Text(someTitle)
                .padding(40)
            
            Button("Press me"){
                       self.someTitle = "Button is pressed"
                   }
            .accentColor(.red)
            
            
            Button {
                self.someTitle = "Number #2 button pressed"
            } label: {
                Text("Next Button" .uppercased())
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Color.blue
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
                    
            }.padding(40)
                .foregroundStyle(Color.white)

        }
       
    }
}

#Preview {
    Buttons()
}

//
//  FocusStatee.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 15/07/24.
//

import SwiftUI

struct FocusStatee: View {
    @State var textFieldFocus: String = ""
    
    enum FucsFields: Hashable {
        case usename
        case password
    }
    
    @FocusState private var fieldInFocus: FucsFields?
    
//    @FocusState private var usernameInFocus: Bool
//    @FocusState private var userPasswordFocus: Bool
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 40){
            TextField("User Name", text: $username)
                //
                //.focused($usernameInFocus)
                .focused($fieldInFocus, equals: .usename)
            
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(.green.opacity(0.8))
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            SecureField("PassWord", text: $password)
                //
                .focused($fieldInFocus, equals: .password)
            
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(.green.opacity(0.7))
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button("Sign UP 👋"){
                let userIsValid = !username.isEmpty
                let passwordValid = !password.isEmpty
                
                if userIsValid && passwordValid{
                    print("sign upppppp")
                } else if userIsValid {
                    fieldInFocus = .password
                  //  usernameInFocus = false
                   // userPasswordFocus = true
                }  else {
                    fieldInFocus = .usename
                   // usernameInFocus = true
                   // userPasswordFocus = false
                }
            }.foregroundStyle(.blue)
                .font(.title)
        
//            Button("Toggle the fuck"){
//                usernameInFocus.toggle()
//            }.foregroundStyle(.red)
                
        }.padding(50)
            .tint(.white)
//            .onAppear{
//                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                    usernameInFocus = true
//                }
//            }
    }
}

#Preview {
    FocusStatee()
}

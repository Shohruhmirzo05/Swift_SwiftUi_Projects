//
//  ViewPage.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 18/07/24.
//

import SwiftUI

struct ViewPage: View {
    
    @State private var textFieldText: String = ""
    @State private var passwordText: String = ""
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundStyle(.linearGradient(colors: [.pink, .indigo], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1000, height: 400)
                .rotationEffect(Angle(degrees: 135))
                .offset(y: -350)
            VStack{
                Text("Welcome")
                    .foregroundStyle(.white)
                    .font(.system(size: 40, weight: .bold))
                   // .frame(maxWidth: .infinity,alignment: .leading)
                    .offset(x: -100, y: -100)
                
                TextField("Email", text: $textFieldText)
                    .foregroundStyle(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: textFieldText.isEmpty) {
                        Text("Email")
                            .foregroundStyle(.white)
                            .bold()
                    }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundStyle(.white)
                    
                SecureField("Password", text: $passwordText)
                    .foregroundStyle(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: passwordText.isEmpty) {
                        Text("Password")
                        .foregroundStyle(.white)
                        .bold()
                    }
                    .padding(.top)
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundStyle(.white)
                
                
                Button {
                    
                } label: {
                    Text("Sign UP")
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal, 40)
                        .background(
                            LinearGradient(colors: [.pink, .indigo], startPoint: .bottomTrailing, endPoint: .topLeading)
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top, 80)
                }
                
               Text("Already have an Account? Log In")
                    .foregroundStyle(.white)
                    .padding(.top)

            }.frame(maxWidth: 350)
        }
    }
}

#Preview {
    ViewPage()
}


extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

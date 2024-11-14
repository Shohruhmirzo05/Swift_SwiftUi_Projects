//
//  ProfielView.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 15/07/24.
//

import SwiftUI

struct ProfielView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currnetUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            Image("bedroom")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image(systemName: "person.circle.fill")
                
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    
                Text(currentUserName ?? "Your name here")
                Text("Age : \(currentUserAge ?? 0)")
                Text("Gender is: \(currentUserGender ?? "unknown")")
                
                Text("Sign Out")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.black)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.top, 40)
                    .onTapGesture {
                        signOut()
                    }
            }
            
            .font(.title)
            .padding()
            
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding()
            
            .shadow(radius: 10)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
    
    func signOut() {
        currentUserAge = nil
        currentUserName = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currnetUserSignedIn = false
        }
        
        
    }
}

#Preview {
    ProfielView()
}

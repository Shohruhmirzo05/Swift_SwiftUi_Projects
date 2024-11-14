//
//  AppStorage.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 14/07/24.
//

import SwiftUI

struct AppStorageLesson: View {
    //@State var currnetUserName: String?
    @AppStorage("KeyName") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20)  {
            // First way to UNWRAP Optiona
         //  Text(currentUserName ?? "Add Name Here")
            
            
            // Second Way to Unwrap Optional
            if currentUserName != nil {
                Text("Need to ADD Name")
            }
            
            Button {
                _ = "Emily "
                currentUserName = "emil"
                // Saving DATA using UserDefaults which is old way used in UIKIT
               // UserDefaults.standard.set( name, forKey: "KeyName")
            } label: {
                Text("Save".uppercased())
             }
        }
//        .onAppear{
//            currentUsertName = UserDefaults.standard.string(forKey: "KeyName")
//        }
    }
}

#Preview {
    AppStorageLesson()
}

//
//  ModelsCustomData.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 13/07/24.
//

import SwiftUI

struct userModel: Identifiable {
    
    // UUID creates random ID for users
    let id: String = UUID().uuidString
    // We can creater any custom data type
    let displayName: String
    let userName: String
    let userFollowers: Int
    let isVerified: Bool
}

struct ModelsCustomData: View {
    // here, we can only include only users' Name, not all Data points, such as id, age or smth
    //@State var users: [String] = ["user1", "user2", "user3", "user4", "user5"]
    
    // creating our own custom Data Type
    @State var users: [userModel] = [
        userModel(displayName: "Nick", userName: "nick0123", userFollowers: 145, isVerified: true),
        userModel(displayName: "Alien", userName: "alien000", userFollowers: 11, isVerified: false),
        userModel(displayName: "Jordan", userName: "jordan456", userFollowers: 303, isVerified: false),
        userModel(displayName: "Jason", userName: "Jason022", userFollowers: 544, isVerified: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 20){
                        Circle()
                            .frame(width: 35)
                        VStack (alignment: .leading){
                            HStack {
                                Text(user.displayName)
                                    .font(.title3.bold())
                                if user.isVerified {
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundStyle(.blue)
                                }
                               
                            }
                            Text("Username: @\(user.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        VStack (alignment: .trailing){
                            Text("\(user.userFollowers)")
                                .font(.headline)
                            Text("followers")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                }.padding(.vertical)
                
                    
                    
//                    ForEach(users, id: \.self) { name in
//                    HStack(spacing: 20){
//                        Circle()
//                            .frame(width: 35)
//                        Text(name)
//                    }.padding(.vertical)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Title")
        }
    }
    func checkIfUserVerified() {
        
    }
}

#Preview {
    ModelsCustomData()
}

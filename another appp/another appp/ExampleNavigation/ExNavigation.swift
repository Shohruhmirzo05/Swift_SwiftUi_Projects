//
//  ExNavigation.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 11/07/24.
//

import SwiftUI

struct ExNavigation: View {
    var body: some View {
            NavigationStack{
                ScrollView{
                    
                }
                //.navigationTitle("hello")
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        NavigationLink {
                            ExMypage().navigationBarBackButtonHidden()
                        } label: {
                            Image(systemName: "person")
                                .font(.system(size: 20))
                        }
                        
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink {
                            ExMessages().navigationBarBackButtonHidden()
                        } label: {

                                 Image(systemName: "message.badge")
                                .font(.system(size: 20))
                                        
                                
                        }
                        
                    }
                }
            }

    }
}

#Preview {
    ExNavigation()
}

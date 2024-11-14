//
//  header.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 13/07/24.
//

import SwiftUI

struct headerSection: View {
  @State var searchButton: Bool = false
//    @Binding var searchText: String
    var body: some View {
        
   
        Text("")
            .toolbar{
                ToolbarItem (placement:.topBarLeading ){
                    Button {
                        
                    } label: {
                        Image("youtube")
                            .resizable()
                            .frame(maxWidth: 100)
                            .frame(height: 50)
                    }
                    
                }
                ToolbarItem (placement:.topBarTrailing ){
                                   Button {
                                       
                                   } label: {
                                       Image(systemName: "bell.badge")
                                   }
                               }

                ToolbarItem (placement:.topBarTrailing ){
                    Button {
                        searchButton.toggle()
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                    }
                   
                }
               
            }
            
    }
//    func pressSearchButton() {
//       
//    }
}

#Preview {
    headerSection()
}

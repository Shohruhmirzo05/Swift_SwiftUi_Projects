//
//  ifLetGuard.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 12/07/24.
//

import SwiftUI

struct ifLetGuard: View {
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    var body: some View {

        NavigationStack{
            VStack{
                
                Text("Example")
                    .font(.title.bold())
                
                // Unwrapping the OPTIO NAL string Boolean
                if let text = displayText{
                Text(text)
                 }
                
                if isLoading{
                    ProgressView()
                }
                
                Spacer()
            }
            .onAppear{
               loadDAta2()
            }
            
        }
        
    }
    
    func loadData(){
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                /// After finishing LOADING
                displayText = "this is new DATA: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "you are NOT registered"
        }
        
    }
    
    func loadDAta2() {
        guard let userID = currentUserID else{
            displayText = "you are NOT registered  22222"
            return
}
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            /// After finishing LOADING
            displayText = "this is new DATA  2222: \(userID)"
            isLoading = false
        }
        
    }
}

#Preview {
    ifLetGuard()
}

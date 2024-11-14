//
//  IntroView.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 15/07/24.
//

import SwiftUI

struct IntroView: View {
    // if there is no value, appstorage is gonna set it to False, if there is, its gonna set its own value
    @AppStorage("signed_in") var currnetUserSignedIn: Bool = false
    var body: some View {
        ZStack{
            RadialGradient(colors: [.pink, .indigo],
                           center: .topLeading,
                           startRadius: 50,
                           endRadius: 500)
            .ignoresSafeArea()
            
            // If user is Signed in --> Profile View
            // If not --> Onboarding View
            if currnetUserSignedIn {
                ProfielView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))

            }
            
           
        }
    }
}



#Preview {
    IntroView()
}

//
//  mainSection.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 13/07/24.
//

import SwiftUI

struct mainSection: View {
//    @State var searchButton: Bool = false
//    @State var searchText: String = ""
    var body: some View {
//        ZStack{
                NavigationStack {
                        ZStack {
                            Color.primary.ignoresSafeArea()
                            ScrollView {
                                ZStack{
                                    //TabView{}
                                    VStack {
                                        BodySection()
                                    }
                                }
                            }
                            .toolbar{
                                headerSection()
                                                    }
                                }
                
//}
        }
    }
}

#Preview {
    mainSection()
}

//
//  TabView-43.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 12/07/24.
//

import SwiftUI

struct TabView_43: View {
    @State var selectionTab: Int = 1
    //@Binding var selectionTabNew: Int
    var body: some View {
//        ScrollView{
//            
//            
//        }
        TabView(selection: $selectionTab)
                {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                        
                    Text("Home")
                }
                .tag(1)
                
            CarPage()
                .tabItem {
                    Image(systemName: "car")
                    Text("Car")
                }
                .tag(2)
                    ProfilePage(selectionTab: $selectionTab)
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }.tag(3)
        }.tint(.black)
            
    }
}

#Preview {
    TabView_43()
}

@ViewBuilder func homeViewHelper() -> some View{
    ScrollView{
        HomeView()
        CarPage()
    }
}

struct HomeView: View {
    @State var selectionTabNew: Int = 2
    var body: some View {
//        ZStack {
//            NavigationStack{
//                ScrollView {
//                    VStack {
        NavigationStack {
           
            ZStack{
                Color.indigo.ignoresSafeArea(edges: .top)
                GeometryReader(content: { geometry in
                    ScrollView {
                                       TabView(selection: $selectionTabNew) {
                                                          Image("4kNature")
                                                              .resizable()
                                                              .frame(maxWidth: 300, maxHeight: 200)
                                                              .clipShape(RoundedRectangle(cornerRadius: 20))
                                                              .tag(1)
                                                          Image("4kDesktop")
                                                              .resizable()
                                                              .frame(maxWidth: 300, maxHeight: 200)
                                                              .clipShape(RoundedRectangle(cornerRadius: 20))
                                                              .tag(2)
                                                          Image("4kNature")
                                                              .resizable()
                                                              .frame(maxWidth: 300, maxHeight: 200)
                                                              .clipShape(RoundedRectangle(cornerRadius: 20))
                                                              .tag(3)
                                                      }
                                       .frame(minHeight: geometry.size.height)
                                       .tabViewStyle(PageTabViewStyle())
                                  }
                                   .navigationTitle("Home")
                                   .navigationBarTitleDisplayMode(.inline)
                })
               
               
                    
            }
        }
    }
}

struct CarPage: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color.green.ignoresSafeArea(edges: .top)
                ScrollView{
                    Text("something")
                }//.frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            
            
        }
    }
}

struct ProfilePage: View {
    @Binding var selectionTab: Int
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: .top)
            VStack{
                Button {
                    selectionTab = 1
                } label: {
                    Text("Press to Home Page")
                        .foregroundStyle(.white)
                        .padding()
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 10)
                }

            }
        }
    }
}

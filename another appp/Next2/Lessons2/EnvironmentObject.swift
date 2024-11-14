//
//  EnvironmentObject.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 14/07/24.
//

// MARK: understan how to pass DATA to multiple screens without passing by each of them with .environmentObject(bodyEnvironmentModel)
// MARK: which is given to the next to the data which we need to pass. but it is not used in this CODE  !!!

import SwiftUI

// in real app, the EnvironmentViewModel is gonna be based on Screen ---> example --- @HomeScreenViewModel :)
class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
  //  let id: String = id.uuidString
    init () {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["Banana", "Apple", "Orange", "Pinapple"])
    }
}
                                            
struct EnvironmentObject: View {
    // @StateObject
    // ObservedObject
    @ObservedObject var bodyEnvironmentModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.indigo, .green],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing).ignoresSafeArea()
                
            NavigationStack{
                List{
                    ForEach(bodyEnvironmentModel.dataArray, id: \.self) { item in
                        NavigationLink {
                            VStack{
                                    ScrollView (showsIndicators: false){
                                        DetaiView(selectedItem: item, detailViewModel: bodyEnvironmentModel)
                                    }
                            }
                        } label: {
                            Text(item)
                        }

                    }
                    

                }
                .navigationTitle("Welcome")
                
                    
            }
            //.environmentObject(bodyEnvironmentModel)
            // ----> making this DATA accessible to every single place in our APP
            
        }
           
    }
}

//@ViewBuilder

struct DetaiView : View {
   // @ObservedObject var bodyEnvironmentModel: EnvironmentViewModel = EnvironmentViewModel()
    let selectedItem: String
    // Accessing to the EnvironmentViewModel
     @StateObject var detailViewModel: EnvironmentViewModel
    
    //@EnvironmentObject var bodyEnvironmentModel: EnvironmentViewModel
    var body: some View {
        
        ZStack{
            Color.green.ignoresSafeArea()
            
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 300, height: 200)
//                    .foregroundStyle(.white)
//                    .shadow(radius: 10)
//                    .padding(30)
//                    .overlay(
//                        Text(selectedItem)
//                    )
            
            // WE PASSING THE ENVIRONMENTVIEWMODEL TO THE NEXT SCREEN
            NavigationLink(destination: finalView(finalViewModel: detailViewModel)) {
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 300, height: 200)
                                    .foregroundStyle(.white)
                                    .shadow(radius: 10)
                                    .padding(30)
                                    .overlay(
                                        Text(selectedItem)
                                    )
            }
        }.navigationBarTitle("", displayMode: .inline)
    }
}

struct finalView: View {
    // we were passing view by view with it, but we have other easier option
    @StateObject var finalViewModel : EnvironmentViewModel
    
    // ----> which is this
    //@EnvironmentObject var finalViewModel : EnvironmentViewModel
    var body: some View {
        ZStack{
            LinearGradient(colors: [.red, .blue],
                           startPoint:  .topLeading,
                           endPoint: .bottomTrailing).ignoresSafeArea()
            ScrollView{
                VStack(spacing: 40) {
                    ForEach(finalViewModel.dataArray, id: \.self) { finalView in
                        Text(finalView)
                            .font(.title.bold())
                            .foregroundStyle(.white)
                    }
//                    Text("Item 1")
//                        .font(.title.bold())
//                    .foregroundStyle(.white)
//                    Text("Item 2")
//                        .font(.title.bold())
//                        .foregroundStyle(.white)
//                    Text("Item 3")
//                        .font(.title.bold())
//                        .foregroundStyle(.white)
                }
                
            }
        }
    }
}

#Preview {
    EnvironmentObject()
        .environmentObject(EnvironmentViewModel())
}

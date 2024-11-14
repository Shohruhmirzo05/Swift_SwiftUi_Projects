//
//  ViewModel.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 13/07/24.
//

import SwiftUI


// created our own types
struct fruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let fruitCount: Int
} 

// classes

class FruitViewModel: ObservableObject {
    
    /// FOR now PUBLISHED is same thing with @ STATE  inside the struct
    @Published var fruitArray: [fruitModel] = []
    @Published var isLoading: Bool = false
    
    init () {
        getFruits()
    }
    
    func getFruits(){
        let fruit1 =  fruitModel(name: "Orange", fruitCount: 12)
        let fruit2 = fruitModel(name: "Banana", fruitCount: 22)
        let fruit3 = fruitModel(name: "Pinapple", fruitCount: 90)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModel: View {
    
    // referring to class of FruitViewModel
    //@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()

    // @StateObject ---> Use this for Creation / Inits
    // Observed =Object ---> Use this for SubViews
    
    /*
     if we use @ObservedObject when referring to the class, and if something get updated on APP (animation or smth),
     the whole codes, everything reloads
     
     if we use @StateObject instead of @ObservedObject, the only View of the APP is gonna be reloads. its useful in most cases
     
     */
    
    var body: some View {
        NavigationStack{
            
            List{
                if fruitViewModel.isLoading {
                        ProgressView()
                }
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.fruitCount)")
                            Text(fruit.name)
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }.navigationTitle("Fruit List")
                    .listStyle(GroupedListStyle())
            
            // this action is being repeated and adding 3 items when we go to next screen and come back, we need to initialize
//                    .onAppear{
//                        fruitViewModel.getFruits()
//                    }
                    .toolbar{
                        ToolbarItem(placement: .topBarLeading) {
                            Button {
                            } label: {
                                Image(systemName: "1.circle")
                                    .font(.title2)
                            }
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                             // passing -- connecting first and second Screen
                                NavigationLink(destination: secondScreen(fruitViewModel: fruitViewModel)) {
                                        Image(systemName: "person")
                                            .font(.title2)
                                }
                            }
                 }
        }
    }
    
    /// Removing them and moving the inside the CLASS
//    func getFruits(){
//        let fruit1 =  fruitModel(name: "Orange", fruitCount: 12)
//        let fruit2 = fruitModel(name: "Banana", fruitCount: 22)
//        let fruit3 = fruitModel(name: "Pinapple", fruitCount: 90)
//        
//        fruitView.append(fruit1)
//        fruitArray.append(fruit2)
//        fruitArray.append(fruit3)
//    }
//    
//    func deleteFruit(index: IndexSet) {
//        fruitArray.remove(atOffsets: index)
//    }
}

struct secondScreen : View {
    @Environment (\.dismiss) var dismiss
    
    // ---> with @ObservedObject, we can access to the DATA in the first screen
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            VStack {
                Button {
                    dismiss()
                } label: {
                    Text("GO BACK")
                        .foregroundStyle(.white)
                        .font(.title.bold())
            }
                ForEach(fruitViewModel.fruitArray) { FRUIT in
                    Text(FRUIT.name)
                        .foregroundStyle(.white)
                        .font(.title)
                }
            }

        }
    }
}

#Preview {
    ViewModel()
}

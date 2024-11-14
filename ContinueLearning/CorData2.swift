//
//  CorData2.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 20/07/24.
//

import SwiftUI
import CoreData

class CoreDataViewModel: ObservableObject {
    
    // first we need to set container for Core Data
    let container: NSPersistentContainer
    
    @Published var savedEntities : [FruitEntity] = []
    
    init() {
        
             container = NSPersistentContainer(name: "FruitsContainer")
        // this loads all the data from container -->
        container.loadPersistentStores { (description, error) in
            if let error = error {
                print("Error Loading Core Data: \(error)")
            } else {
                print("successfully loaded core data")
            }
            // thats all logic to import the core data that we need
        }
        fetchFruits()
    }
    // create a fetchReques to get the Data from container
    func fetchFruits() {
        let request = NSFetchRequest<FruitEntity>(entityName: "FruitEntity")
        
        do{
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("Erorr Fetching: \(error)")
        }
    }
    
    func addFruit(text: String) {
        let newFruit = FruitEntity(context: container.viewContext)
        newFruit.name = text
        saveData()
    }
    
    func saveData(){
        do {
            try container.viewContext.save()
            // to update publish everytime we save data
            fetchFruits()
        } catch let error {
            print("Error for saving: \(error)")
        }
    }
    
    func deleteFruit(indexset: IndexSet){
        // we need to find entity
        
        guard let index = indexset.first else {return}
        let entity = savedEntities[index]
        container.viewContext.delete(entity)
        saveData()
    }
    
    func updateFruit(entity: FruitEntity){
        let currentName = entity.name ?? ""
        let newName = currentName + "!"
        entity.name = newName
        saveData()
    }
    
}

struct CorData2: View {
    
    @StateObject var vm = CoreDataViewModel()
    @State var textFieldText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20){
                TextField("type to add", text: $textFieldText, onCommit: {
                    if textFieldText.isEmpty{
                        return
                    } else{
                        vm.addFruit(text: textFieldText)
                        textFieldText = ""
                    }
                })
                    .padding()
                    .background(Color(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(.blue)
                    .padding()
                Button {
                    if textFieldText.isEmpty{
                        return
                    } else{
                        vm.addFruit(text: textFieldText)
                        textFieldText = ""
                    }
                 
                } label: {
                    Text("Button")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal)
                        .foregroundStyle(.white)
                }
                
                List{
                    ForEach(vm.savedEntities){ entity in
                        Text(entity.name ?? "no name")
                            .onTapGesture {
                                vm.updateFruit(entity: entity)
                            }
                    }
                    .onDelete(perform: vm.deleteFruit)
//                    .toolbar{
//                        ToolbarItem {
//                            EditButton()
//                            
//                        }
//                        
//                    }
                    
                    
                }//.listStyle(.pla)

                Spacer()
                    
            }.navigationTitle("Title")
        }
    }
}

#Preview {
    CorData2()
}

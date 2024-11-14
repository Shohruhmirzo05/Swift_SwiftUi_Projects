//
//  ListsBoot.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 11/07/24.
//

import SwiftUI

struct ListsBoot: View {
    @State var fruits: [String] = [
   "apple", "orange", "banana", "uzum", "any"
    ]
    
    @State var veggies: [String] = [
        "poato", "tomato", "cucumber", "watermelon"
    ]
    var body: some View {
        NavigationStack {
            List{
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                                        Text(fruit.capitalized)
                                    }
                    .onDelete(perform: delete)
                        .onMove(perform: move)
                } header: {
                    Text("Fruits here: ")
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                }
 
                    
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery list")
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                addButton
                }
            }
        }
    }
    
    var addButton: some View {
        Button {
            add()
            
        } label: {
            Image(systemName: "plus")
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet , newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add(){
        fruits.append("additional thing")
    }
}

#Preview {
    ListsBoot()
}

//
//  HashableLesson.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 19/07/24.
//

// Hashable means --> just like identifieable
// Hashable gives id, so we can give like unique ID

import SwiftUI

// instead of Confirming to Identifiable, we can confirm the struct to Hashable

struct MyCustomModel: Hashable {
    // if we confirm to hashable, we can use without id 
    //let id: String = UUID().uuidString
  let title : String
    let subtitle: String
    
    
    // Creating a function to create hash value is working same without function,. its creating hash value on it self, just gave hashable to struct
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(title + subtitle)
//    }
}

struct HashableLesson: View {
    
    let data: [MyCustomModel] = [
        MyCustomModel(title: "ONe", subtitle: "sub1"),
        MyCustomModel(title: "Two", subtitle: "sub2"),
        MyCustomModel(title: "Three", subtitle: "sub3"),
        MyCustomModel(title: "Four", subtitle: "sub4")
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 50){
                
                //
//                ForEach(data) { item in
//                    Text(item.id)
//                        .font(.headline)
//                }
                ForEach(data, id: \.self) { index in
                    Text("Hashable value of \(index) is : \(index.hashValue.description)")
                }
            }
        }
    }
}

#Preview {
    HashableLesson()
}

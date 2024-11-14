//
//  ListSwipeActions.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 15/07/24.
//

import SwiftUI

struct ListSwipeActions: View {
    @State var fruits: [String] = [
    "apple", "banana", "pinapple", "watermelon"
    ]
    var body: some View {
        List{
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
            }
            //.badge(10)
            
            //.onDelete(perform: { indexSet in})
            .swipeActions(edge: .trailing,
                          allowsFullSwipe: true) {
                Button("Archive"){}
                    .tint(.gray)
                Button("Save"){}
                    .tint(.green)
                Button("Remove"){}
                    .tint(.pink)
            }
                          .swipeActions(edge: .leading,
                                        allowsFullSwipe: true) {
                              Button("share"){}
                              .tint(.yellow)}
        }
    }
    func delete(indexSet: IndexSet){
    }
}

#Preview {
    ListSwipeActions()
}

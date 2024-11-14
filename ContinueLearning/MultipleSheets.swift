//
//  MultipleSheets.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 18/07/24.
//

import SwiftUI

struct RandomModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
}

// MARK: to create 2 sheet
// we need to create sheets to buttons direcxtly, should not be paretn, child hirarchy

// or we can use $item optional way -->

struct MultipleSheets: View {
    
    @State var selectedModel: RandomModel? = nil
    @State var showSheet: Bool = false
    
    // Second way --->
//    @State var showSheet2: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20 ){
                ForEach(0..<50){ index in
                    Button("Button: \(index)"){
                        selectedModel = RandomModel(title: "\(index)")
                        showSheet.toggle()
                    }
                }
                
                
            }
            .sheet(item: $selectedModel) { Identifiable in
                nextScreen(selectedModel: Identifiable)
            }
        }
        
    }
}


struct nextScreen: View {
    
    // First Way ---->
    // With binding the selected model for next screen, we can dirextly use RandomModel(title: ONE or TWO)
    // without using "Starting title in the first struct "
    //@Binding var selectedModel: RandomModel
    
    
    
    
    let selectedModel: RandomModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

#Preview {
    MultipleSheets()
}

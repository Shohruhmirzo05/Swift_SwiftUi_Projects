//
//  ResizableSheett.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 16/07/24.
//

import SwiftUI

struct ResizableSheett: View {
    @State private var showSheet: Bool = false
    @State private var fillText: String = ""
    @State private var detent: PresentationDetent = .large
    var body: some View {
        Button("Click here"){
            showSheet.toggle()
        }.sheet(isPresented: $showSheet, content: {
//            dismissDisabled()
            nextSheet(fillText: $fillText)
            // resizing the sheet
               // .presentationDetents([.fraction(0.3),.medium, .large])
            
            // to customize HOW sheet to appear when user to click it
                .presentationDetents([.large, .medium], selection: $detent)
            
                .interactiveDismissDisabled(fillText.isEmpty)
                //.presentationDragIndicator(.hidden)
                //.interactiveDismissDisabled()
        })
    }
}

struct nextSheet: View {
    @Binding var fillText: String
    var body: some View {
        ZStack {
            Color.indigo
            VStack {
                Text("heee")
                    .font(.title)
                .foregroundStyle(.white)
                TextField("Fill here", text: $fillText)
                    .background(.white)
                    .padding()
            }
            
            
        }.ignoresSafeArea()
//            .onAppear {
//                        dismissDisabled()
//                    }
    }
    
//    func dismissDisabled(){
//        if fillText.isEmpty {
//                    nextSheet(fillText: $fillText).interactiveDismissDisabled()
//                } else {
//                    nextSheet(fillText: $fillText)
//                }
//    }
}

#Preview {
    ResizableSheett()
}

 

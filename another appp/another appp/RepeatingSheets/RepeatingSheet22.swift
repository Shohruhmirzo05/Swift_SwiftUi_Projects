//
//  RepeatingSheet22.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/07/24.
//

import SwiftUI

struct RepeatingSheet22: View {
    //@State var openSheet: Bool = false
    @Binding var showFirstScreen: Bool
    @Environment (\.dismiss) var dismiss
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.blue
                .ignoresSafeArea()
            Button {
               // dismiss()
                withAnimation{
                    showFirstScreen.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.title)
                    .padding(.leading, 20)
                    .padding(.top, 20)
                    
            }

        }.clipShape(RoundedRectangle(cornerRadius: 35.0))
            .ignoresSafeArea(edges: .bottom)
//            .transition(.move(edge: .bottom))
//            .animation(.spring, value: showFirstScreen)
            
    }
}

#Preview {
    //RepeatingSheet22(showFirstScreen: $showFirstScreen )
//    StatefulPreviewWrapper(false) { RepeatingSheet22(showFirstScreen: $0) }
    RepeatingSheet22(showFirstScreen: .constant(true))
}

// No info yet about what is it
// it can be useful for Preview 
//--->
//struct StatefulPreviewWrapper<T: View>: View {
//    @State private var state: Bool
//    var content: (Binding<Bool>) -> T
//
//    init(_ initialState: Bool, @ViewBuilder content: @escaping (Binding<Bool>) -> T) {
//        self._state = State(initialValue: initialState)
//        self.content = content
//    }
//
//    var body: some View {
//        content($state)
//    }
//}

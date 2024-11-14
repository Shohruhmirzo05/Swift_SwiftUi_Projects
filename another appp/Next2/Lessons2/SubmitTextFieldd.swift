//
//  SubmitTextFieldd.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 16/07/24.
//

import SwiftUI

struct SubmitTextFieldd: View {
    @State private var textField: String = ""
    @State private var showAlery: Bool = false
    @FocusState private var isfocused: Bool
    var body: some View {
        VStack {
            TextField("placeholder", text: $textField)
                .submitLabel(.continue)
                .onSubmit {
                    alertIsPressed()
                }
                .focused($isfocused)
            TextField("placeholder", text: $textField)
                .submitLabel(.send)
            TextField("placeholder", text: $textField)
                .submitLabel(.search)
        }.alert("fuck you", isPresented: $showAlery) {
            
        }
    }
    func alertIsPressed(){
        showAlery = true
    }
}

#Preview {
    SubmitTextFieldd()
}

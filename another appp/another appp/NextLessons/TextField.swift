////
////  TextField.swift
////  another appp
////
////  Created by Shohruhmirzo Alijonov on 12/07/24.
////
//
//import SwiftUI
//
//struct TextFieldLesson: View {
//    @AppStorage("keyName") var textFieldCompletion: String = ""
//    @State var dataArray: [String] = []
//    @State var showAlert: Bool = false
//    @State var showSuccessAlert: Bool = false
//   // @AppStorage("ForExample") var textFieldCompletion22: String?
//    var body: some View {
//        
//            NavigationStack{
//                
//                ZStack {
//                    Color.green.ignoresSafeArea()
//                    ScrollView {
//                        
//                        VStack {
//                            
//                            TextField("type something here...", text: $textFieldCompletion, onCommit: saveText)
//                                .padding()
//                            //.textFieldStyle(RoundedBorderTextFieldStyle())
//                                .background(.gray.opacity(0.3))
//                                .clipShape(RoundedRectangle(cornerRadius: 10))
//                                .font(.headline.bold() )
//                                .foregroundStyle(.white)
//                                .shadow(radius: 10)
//                                .onChange(of: textFieldCompletion) { newValue in
//                                    textFieldCompletion = newValue.lowercased()
//                                }
//                            
////                            if let textSave = textFieldCompletion22 {
////                                Text(textSave)
////                            }
//                            
//                            Button {
////                                let textSave = textFieldCompletion22
//                                
//                                if textApproperiate() {
//                                    saveText()
//                                    showSuccessAlert = true
//                                } else {
//                                    showAlert = true
//                                }
//                               // textFieldCompletion22 = textFieldCompletion
//                                
//                            } label: {
//                                Text("Save \(Image(systemName: "flame.fill"))")
//                                    .padding()
//                                    .frame(maxWidth: .infinity)
//                                    .background(textApproperiate() ? .blue : .gray)
//                                    .foregroundStyle(.white)
//                                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                                    .shadow(radius: 10)
//                            }
//                            // .disabled(!textApproperiate())
//                            .alert("Your message is Saved", isPresented: $showSuccessAlert, actions: {
//                                
//                            })
//                            .alert("write more words", isPresented: $showAlert) {
//                                
//                            }
//                            
//                            ForEach(dataArray, id: \.self) { dataArray in
//                                Text(dataArray)
//                            }
//                         }
//                        .padding()
//
//                    }.navigationTitle(Text("Text Field Bootcamp"))
//                        .navigationBarTitleDisplayMode(.automatic)
//                    .padding()
//                }
//            }
//            
//            
//
//    }
//    func textApproperiate() -> Bool{
//       if textFieldCompletion.count >= 3 {
//            return true
//        }
//        return false
//    }
//    func saveText() {
//        
//            dataArray.append(textFieldCompletion)
//            textFieldCompletion = ""
//        
//       
//    }
//}
//
//#Preview {
//    TextFieldLesson()
//}


//
//  TextField.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 12/07/24.
//

import SwiftUI

struct TextFieldLesson: View {
    @AppStorage("keyName") var textFieldCompletion: String = ""
    @AppStorage("dataArrayKey") var savedDataArrayString: String = ""
    @State var dataArray: [String] = []
    @State var showAlert: Bool = false
    @State var showSuccessAlert: Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.green.ignoresSafeArea()
                ScrollView {
                    VStack {
                        TextField("type something here...", text: $textFieldCompletion, onCommit: saveText)
                            .padding()
                            .background(.gray.opacity(0.3))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .font(.headline.bold())
                            .foregroundStyle(.white)
                            .shadow(radius: 10)
                            .onChange(of: textFieldCompletion) { newValue in
                                textFieldCompletion = newValue.lowercased()
                            }
                        
                        Button {
                            if textAppropriate() {
                                saveText()
                                showSuccessAlert = true
                            } else {
                                showAlert = true
                            }
                        } label: {
                            Text("Save \(Image(systemName: "flame.fill"))")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(textAppropriate() ? .blue : .gray)
                                .foregroundStyle(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(radius: 10)
                        }
                        .alert("Your message is saved", isPresented: $showSuccessAlert) {}
                        .alert("Write more words", isPresented: $showAlert) {}
                        
                        ForEach(dataArray, id: \.self) { item in
                            Text(item)
                        }
                    }
                    .padding()
                }
                .navigationTitle(Text("Text Field Bootcamp"))
                .navigationBarTitleDisplayMode(.automatic)
                .padding()
            }
        }
        .onAppear {
                    // Load the saved dataArray when the view appears
                    if let data = savedDataArrayString.data(using: .utf8) {
                        if let savedArray = try? JSONDecoder().decode([String].self, from: data) {
                            dataArray = savedArray
                        }
                    }
                }
    }
    
    func textAppropriate() -> Bool {
        return textFieldCompletion.count >= 3
    }
    
    func saveText() {
           if textAppropriate() {
               dataArray.append(textFieldCompletion)
               if let data = try? JSONEncoder().encode(dataArray),
                  let jsonString = String(data: data, encoding: .utf8) {
                   savedDataArrayString = jsonString // Save the updated array to AppStorage
               }
               textFieldCompletion = ""
           }
       }
}

#Preview {
    TextFieldLesson()
}

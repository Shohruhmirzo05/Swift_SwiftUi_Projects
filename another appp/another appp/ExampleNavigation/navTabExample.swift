import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
           
            TabView {
                
                TextFieldLesson1()
                    
                    .tabItem {
                        Label("Page One", systemImage: "1.circle")
                        
                       
                    }
                PageTwoView()
                    .tabItem {
                        Label("Page Two", systemImage: "2.circle")
                    }
                PageThreeView()
                    .tabItem {
                        Label("Page Three", systemImage: "3.circle")
                    }
            }
            
        }
    }
}




struct TextFieldLesson1: View {
    @State private var textFieldCompletion: String = ""
    @State private var dataArray: [String] = []

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    TextField("Type something here...", text: $textFieldCompletion)
                        .textCase(.lowercase) // Ensure lowercase display
                        .onChange(of: textFieldCompletion) { newValue in
                            // Check if newValue is lowercase or empty to respect caps lock behavior
                            if newValue.lowercased() == newValue || newValue.isEmpty {
                                textFieldCompletion = newValue.lowercased()
                            } else {
                                textFieldCompletion = newValue.uppercased()
                            }
                        }
                        .autocapitalization(.none) // Disable autocapitalization
                        .disableAutocorrection(true) // Disable autocorrection for better control
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .font(.headline.bold())
                        .foregroundColor(.blue)
                        .shadow(radius: 10)

                    Button(action: {
                        saveText()
                    }) {
                        Text("Save \(Image(systemName: "flame.fill"))")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                    }

                    ForEach(dataArray, id: \.self) { data in
                        Text(data)
                            .padding(.vertical, 5)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                            .padding(.horizontal)
                    }
                }
                .padding()
            }
            .navigationTitle("Text Field Bootcamp")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }

    func saveText() {
        if !textFieldCompletion.isEmpty {
            dataArray.append(textFieldCompletion)
            textFieldCompletion = ""
        }
    }
}



struct PageTwoView: View {
    @State var showAlert: Bool = false
    @State var showExtraSheet: Bool = false
    var body: some View {
        ZStack {
           
            Image("gallery")
                .resizable()
                .ignoresSafeArea()
               
            Button {
                showAlert.toggle()
            } label: {
                Text("Open the Gallery")
                }.alert(isPresented: $showAlert) {
                   
    Alert(
          title: Text("Open the gallery"),
          message: Text("Press open to open the gallery"),
          primaryButton: .cancel(),
          secondaryButton: .default(Text("Open gallery"), action: {
              showExtraSheet = true
          })
    )
                }
                .padding()
                .font(.title)
                .padding(.horizontal, 30)
                .background(.blue)
                .foregroundStyle(.white)
                .shadow(radius: 10)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
                .sheet(isPresented: $showExtraSheet, content: {
                    ExtraSheet1(edSheet: $showExtraSheet)
            })
            
//            TabView {
//
//            }
        }

    }
}

//func getAlert() -> Alert {
//    return  Alert(
//        title: Text("This is title"),
//        message: Text("Everything is good now"),
//        primaryButton: .cancel(),
//        secondaryButton: .default(Text("Open gallery"), action: {
//            //showExtraSheet = true
//        })
//  )
//}

struct ExtraSheet1: View {
    @Binding var edSheet: Bool
    @Environment (\.dismiss) var dismiss
    var body: some View {
        ZStack (alignment: .topLeading){
            Color.green.ignoresSafeArea()
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.system(size: 40))
                    .foregroundStyle(.white)
            }.padding()

            
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .opacity(0)
                        .frame(maxWidth: 200, maxHeight: 200)
                        .overlay(
                        Image("Amir1")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    )
                    RoundedRectangle(cornerRadius: 10)
                        .opacity(0)
                        .frame(maxWidth: 200, maxHeight: 200)
                        .overlay(
                        Image("Amir2")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    )
                }
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .opacity(0)
                        .frame(maxWidth: 200, maxHeight: 200)
                        .overlay(
                        Image("Amir3")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    )
                    RoundedRectangle(cornerRadius: 10)
                        .opacity(0)
                        .frame(maxWidth: 200, maxHeight: 200)
                        .overlay(
                        Image("Amir4")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    )
                }
            }.frame(maxHeight: .infinity)
        }
    }
}

struct PageThreeView: View {
    var body: some View {
        VStack {
            Text("This is Page Three")
            // Additional content for Page Three
        }
    }
}

#Preview {
    ContentView()
}

//
//  Alerts.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 11/07/24.
//

import SwiftUI

struct Alerts: View {
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
                    ExtraSheet(edSheet: $showExtraSheet)
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

struct ExtraSheet: View {
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

#Preview {
    Alerts()
}



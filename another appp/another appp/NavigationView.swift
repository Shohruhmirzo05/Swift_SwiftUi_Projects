//
//  NavigationView.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/07/24.
// 

import SwiftUI

struct LessonNavigation: View {
    var body: some View {
        @State var moveSsecondScreen: Bool = false
        NavigationStack{
            ScrollView{
                //NavigationLink("press", destination: mySecondScreen().navigationBarBackButtonHidden())
               
                    //.navigationTitle(Text("press to bacck"))
                    //.toolbar(.hidden, for: .navigationBar)
                    //.navigationBarBackButtonHidden(true)
                        

            }
            //.toolbar(.hidden, for: .navigationBar)
            //.navigationTitle("All inboxes")
            
            //
            .toolbar{
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        moveSsecondScreen = true
                      
                    } label: {
                        Image(systemName: "person.fill")
                    }


                }
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink {
                        mySecondScreen().navigationBarBackButtonHidden()
                    } label: {
                        Image(systemName: "person")
                    }

                }
            }
        }

        
    }
}

struct mySecondScreen: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.green.ignoresSafeArea()
            VStack{
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        //.fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding()
                })
                }
        

        }
    }
}

#Preview {
    LessonNavigation()
}

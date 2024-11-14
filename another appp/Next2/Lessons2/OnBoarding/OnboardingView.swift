//
//  OnboardingView.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 15/07/24.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var isSignedIn: Bool = false
}

struct OnboardingView: View {
    
    
    
    // This state is gonna show us where we are, first, beginning or some screen
    /*
     0 - Welcome screen
     1 - Add Name
     2 - Add age
     3 - Add gender
     */
    @State var OnboardingState: Int = 0
    
    // For transiotion of Pages
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    let transition2: AnyTransition = .asymmetric(
        insertion: .move(edge: .leading),
        removal: .move(edge: .trailing))
    
    // For onboarding inputs
    @State var name: String = ""
    @State var age: Double = 25
    @State var gender: String = ""
    var genderPicker: String = "Select your gender"
    @State private var isForwardTransition: Bool = true
    
    // For Alert
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    
    // AppStorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currnetUserSignedIn: Bool = false
    
    @FocusState private var focusName: Bool

    var body: some View {
        
        ZStack {
            //Color.purple
            // Contents
            ZStack{
                // switch is works like IF and ELSE, that switches based on the value
                switch OnboardingState{
                case 0:
                    welcomeSection
                        .transition(isForwardTransition ? transition : transition2)
                case 1:
                    nameSection
                        .transition(isForwardTransition ? transition : transition2)
                case 2:
                    addAgeSection
                        .transition(isForwardTransition ? transition : transition2)
                case 3:
                    addGenderSection
                        .transition(isForwardTransition ? transition : transition2)
                default: RoundedRectangle(cornerRadius: 25.0)
                        .background(.gray)
                        .foregroundStyle(.black)
                }
            }
            .alert(alertTitle, isPresented: $showAlert) {}
            // Buttons
            VStack {
                dismissButton
                Spacer()
                bottomButton
            }.padding()
        }
        
 }
}

#Preview {
    OnboardingView()
        .background(.indigo)
}
 
// MARK: Components
// same code - to organize the file
extension OnboardingView {
    
    private var bottomButton: some View {
        Text(OnboardingState == 0 ? "SIGN UP" :
                OnboardingState == 3 ? "FINISH" :
                OnboardingState == 1 ? "NEXT" :
                OnboardingState == 2 ? "NEXT" :
                "")
            .foregroundStyle(.purple)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal)
            .onTapGesture{
                checkGenderSelected()
            }
            
    }
    
    private var dismissButton: some View {
        
        Image(systemName: OnboardingState > 0 && OnboardingState < 4 ? "chevron.backward" : "")
                                       .font(.title)
                                       .onTapGesture {
                                           handleBackButtonpressed()
                                       }
                                       .frame(maxWidth: .infinity, alignment: .leading)
                                       .padding()
                                       .foregroundStyle(.white)
                                       
    }
    
    private var welcomeSection: some View {
        VStack{
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .frame(width: 200, height: 200)
            Text("Find your match")
                .font(.title.bold())
                .foregroundStyle(.white)
                .padding()
                .overlay(alignment: .bottom){
                    Capsule(style: .continuous)
                        .foregroundStyle(.white)
                        .frame(height: 3)
                        .offset(y: -8)
                    
                }
            Text("This is Number #1 App to find your match online!, we are practicing on this tutorial practice. ")
                .foregroundStyle(.white)
                .padding()
            Spacer()
            Spacer()
        }.multilineTextAlignment(.center)
    }
    
    private var nameSection: some View {
        VStack{
        Spacer()
            Text("What's your name ?")
                .font(.title.bold())
                .foregroundStyle(.white)
                .padding()
            TextField("your name...", text: $name)
                .foregroundStyle(.blue)
                .font(.headline)
                .frame(height: 50)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                .padding(.horizontal)
                .focused($focusName)
            Spacer()
            Spacer()
        }.multilineTextAlignment(.center)
    }
    
    private var addAgeSection: some View{
        VStack {
            Text("What's your name ?")
                .font(.title.bold())
                .foregroundStyle(.white)
                Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.white)
                .padding(.top, 1)
            Slider(value: $age, in: 18...100, step: 1)
                .padding()
                .padding(.horizontal, 40)
                .tint(.white)
        }
            
        
     }
    
    private var addGenderSection: some View {
        VStack {
            Text("What's your gender ?")
                .font(.title.bold())
                .foregroundStyle(.white)
            Picker(gender.count > 1 ? gender : "select", selection: $gender) {
                Text(genderPicker).tag("select")
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            }.tint(.purple)
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 50)
            
                
        }
           
    }
    
}

// MARK: Functions
extension OnboardingView {
    func handleNextButtonPressed(){
        
        if OnboardingState == 3 {
            signIn()
        } else if OnboardingState == 1{
                       guard name.count >= -1 else{
                           showAlert(title: "Write your name first")
//                           focusName.toggle()
                           return
                        }
          }
                isForwardTransition = true
                withAnimation(.spring()) {
                    OnboardingState += 1
                }
        }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currnetUserSignedIn = true
        }
    }
    
    func checkGenderSelected(){
        if OnboardingState == 3 {
            guard gender != "" else{
                showAlert(title: "Select your gender")
                return
            }
            handleNextButtonPressed()
        } else {
            handleNextButtonPressed()
        }
        
    }
    
    func handleBackButtonpressed(){
        isForwardTransition = false
        if OnboardingState > 0 && OnboardingState < 4{
            withAnimation {
                OnboardingState -= 1
                
            }
        }
    }
    
    func showAlert(title: String){
        alertTitle = title
        showAlert.toggle()
    }
    
    
}

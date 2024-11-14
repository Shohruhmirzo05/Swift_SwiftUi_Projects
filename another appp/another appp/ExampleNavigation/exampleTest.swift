//import SwiftUI
//
//class EnvironmentViewModel: ObservableObject {
//    @Published var dataArray: [String] = []
//    
//    init() {
//        getData()
//    }
//    
//    func getData() {
//        self.dataArray.append(contentsOf: ["Banana", "Apple", "Orange", "Pineapple"])
//    }
//}
//
//struct EnvironmentObject: View {
//    @ObservedObject var bodyEnvironmentModel: EnvironmentViewModel = EnvironmentViewModel()
//    
//    var body: some View {
//        ZStack {
//            LinearGradient(colors: [.indigo, .green],
//                           startPoint: .topLeading,
//                           endPoint: .bottomTrailing).ignoresSafeArea()
//                
//            NavigationStack {
//                List {
//                    ForEach(bodyEnvironmentModel.dataArray, id: \.self) { item in
//                        NavigationLink {
//                            VStack {
//                                ScrollView(showsIndicators: false) {
//                                    DetaiView(selectedItem: item)
//                                }
//                            }
//                        } label: {
//                            Text(item)
//                        }
//                    }
//                }
//                .navigationTitle("Welcome")
//            }
//            .environmentObject(bodyEnvironmentModel) // Making this DATA accessible to every single place in our APP
//        }
//    }
//}
//
//struct DetaiView: View {
//    let selectedItem: String
//    @EnvironmentObject var detailViewModel: EnvironmentViewModel
//    
//    var body: some View {
//        ZStack {
//            Color.green.ignoresSafeArea()
//            
//            NavigationLink(destination: finalView()) {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 300, height: 200)
//                    .foregroundStyle(.white)
//                    .shadow(radius: 10)
//                    .padding(30)
//                    .overlay(
//                        Text(selectedItem)
//                    )
//            }
//        }
//        .navigationBarTitle("", displayMode: .inline)
//    }
//}
//
//struct finalView: View {
//    @EnvironmentObject var finalViewModel: EnvironmentViewModel
//    
//    var body: some View {
//        ZStack {
//            LinearGradient(colors: [.red, .blue],
//                           startPoint: .topLeading,
//                           endPoint: .bottomTrailing).ignoresSafeArea()
//            ScrollView {
//                VStack(spacing: 40) {
//                    ForEach(finalViewModel.dataArray, id: \.self) { item in
//                        Text(item)
//                            .font(.title.bold())
//                            .foregroundStyle(.white)
//                    }
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    EnvironmentObject()
//        .environmentObject(EnvironmentViewModel())
//}

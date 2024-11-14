//
//  SortFilterArrays.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 19/07/24.
//

import SwiftUI

struct UserModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let points: Int
    let isVerified: Bool
}

class ArrayModificationViewMOdel: ObservableObject{
    
  //  static var instance1 = ArrayModificationViewMOdel()
    @Published var textFieldText: String = "" {
        didSet {
            withAnimation(.easeInOut) {
                updateFilteredArray()
            }
            
        }}
    @Published var dataArray : [UserModel] = []
    @Published var filteredArray: [UserModel] = []
    @Published var mappedArray : [String] = []
    
    
    init(){
        getUsers()
        updateFilteredArray()
    }
    
    func getUsers(){
        let user1 = UserModel(name: "Emily", points: 100, isVerified: false)
        let user2 = UserModel(name: "nil", points: 20, isVerified: true)
        let user3 = UserModel(name: "Afandi", points: 30, isVerified: false)
        let user4 = UserModel(name: "Sansubg", points: 14, isVerified: true)
        let user5 = UserModel(name: "Apple", points: 53, isVerified: false)
        let user6 = UserModel(name: "China", points: 19, isVerified: true)
        let user7 = UserModel(name: "uzbekistan", points: 734, isVerified: false)
        let user8 = UserModel(name: "Pilot", points: 8, isVerified: false)
        let user9 = UserModel(name: "richard", points: 91, isVerified: true)
        let user10 = UserModel(name: "Richard", points: 120, isVerified: true)
        // need to append them to the dataArray
        self.dataArray.append(contentsOf: [
            user1,
            user2,
            user3,
            user4,
            user5,
            user6,
            user7,
            user8,
            user9,
            user10
        ])
        updateFilteredArray()
    }
    
    // MARK: 3 ways to filter --->
    // sort
    // filter
    // map
    
    // SORT
    func updateFilteredArray(){
        // Sort ->
        /*   // user1 and user2 are not first items in the array, basicly they are every item
       filteredArray = dataArray.sorted { (user1, user2) -> Bool in
            return user1.points > user2.points
        }
    
        // same thing with up 3 line of code
        filteredArray = dataArray.sorted(by: {$0.points > $1.points} )
     */
       
        //  Filter ->
      /*//              filteredArray = dataArray.filter({ (user) -> Bool in
//                 return user.isVerified
//             })
//         same Code with up 3 line code
        filteredArray = dataArray.filter({$0.isVerified}) */
        if textFieldText.isEmpty{
            filteredArray = dataArray
        } else {
            let lowercasedFilter = textFieldText.lowercased()
            filteredArray = dataArray.filter({$0.name.lowercased().contains(lowercasedFilter)})
        }
        
       // filteredArray = dataArray.filter({$0.name.contains(textFieldText)})

       
//         Map
           /* //        mappedArray = dataArray.map({ (user) -> String in
//            return user.name
//        })
        // same with up
        mappedArray = dataArray.map({$0.name})
        
        // compact MAP version
        // this helps, if user does not have a name or some data, instead of showing error or nil
        // it ignores
        mappedArray = dataArray.compactMap({$0.name}) */
        
        //Mixed filters
          /*
        // long version of mixing
//        let sort = dataArray.sorted(by: { $0.points > $1.points })
//        let filter = dataArray.filter({$0.isVerified})
//        let map = dataArray.compactMap({$0.name})
        
        // short version of version
        mappedArray = dataArray
                  .sorted(by: { $0.points > $1.points })
                  .filter({$0.isVerified})
                  .compactMap({$0.name}) */
    }
}

struct SortFilterArrays: View {
    
    @StateObject var vm = ArrayModificationViewMOdel()
    @FocusState var textFieldFocus: Bool
    
    var body: some View {
        ScrollView{
            VStack(){
                TextField("Type to dearch", text: $vm.textFieldText, onCommit: {
                    
                })
                .focused($textFieldFocus)
                .foregroundStyle(.blue)
                    .padding()
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                    .shadow(radius: 30)
                    .overlay {
                        Button {
                            
                        } label: {
                            Image(systemName: "magnifyingglass")
                                .font(.title2)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.trailing, 40)
                        }

                    }
                    
                ForEach(vm.textFieldText.isEmpty ? vm.dataArray : vm.filteredArray){ user in
                    VStack(alignment: .leading){
                        Text(user.name )
                            .font(.headline.bold())
                        HStack{
                            Text("Points: \(user.points)")
                                .font(.caption)
                            Spacer()
                            if user.isVerified{
                                Image(systemName: "checkmark.circle")
                                    .font(.headline)
                            }
                        }
                    }.padding()
                        .foregroundStyle(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal)
                }
                
                // MARK: used fot mixed filter
//                ForEach(vm.mappedArray, id: \.self) { name in
//                    Text(name)
//                        .font(.title)
//                }
            }
        }
        
    }
}

#Preview {
    SortFilterArrays()
}

//
//  Initializer.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 08/07/24.
//

import SwiftUI

struct Initializer: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
   
    init(count: Int, fruit: Fruit) {
        //self.backgroundColor = backgroundColor
        self.count = count
        //self.title = title
        
        if fruit == .apple {
            self.title = "apple"
            self.backgroundColor = .red
        } else if fruit == .orange {
            self.title = "orange"
            self.backgroundColor = .orange
        } else if fruit == .banana {
            self.title = "banana"
            self.backgroundColor = .yellow
        } else {
            self.title = "anything"
            self.backgroundColor = .black
        }
    }
    
    enum Fruit {
        case apple
        case orange
        case banana
        case anything
    }
    var body: some View {
        VStack(spacing: 10){
            Text("\(count)")
                .font(.largeTitle)
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .frame(width: 180, height: 150)
        .background(backgroundColor)
        .cornerRadius(30)
        .foregroundColor(.white)
    }
}

#Preview {
    HStack{
        
        Initializer(count: 200, fruit: .banana)
        VStack{
            Initializer(count: 100, fruit: .apple)
            Initializer(count: 200, fruit: .banana)
        }
    }
   
}

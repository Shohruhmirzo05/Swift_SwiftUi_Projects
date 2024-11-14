//
//  TernaryOperators.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 09/07/24.
//

import SwiftUI

struct TernaryOperators: View {
    @State var isStartingPoint: Bool = false
    var body: some View {
        Button("Press to switch: \(isStartingPoint.description)"){
            isStartingPoint.toggle()
        }
        
        Rectangle()
        
        // Ternary Operator -> ? is IF,
        // : -> else
        
            .fill(isStartingPoint ? Color.green : Color.pink)
            .frame(width: isStartingPoint ? 200 : 50, height: 200)
            .cornerRadius(isStartingPoint ? 40 : 10)
    }
}

#Preview {
    TernaryOperators()
}

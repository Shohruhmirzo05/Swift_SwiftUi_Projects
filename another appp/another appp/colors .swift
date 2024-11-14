//
//  colors .swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/06/24.
//

import SwiftUI

struct colors_: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                //Color.red
                //Color.primary
                //Color(#colorLiteral( red: 0.5, green: 0.2, blue: 0.3, alpha: 1))
                //Color(Color(red: 255, green: 0, blue: 0))
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
                
            )
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 20, y: 20)
            .frame(width:  300, height: 300)
    }
}

#Preview {
    colors_()
}

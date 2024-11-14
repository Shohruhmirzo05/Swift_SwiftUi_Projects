//
//  NavigationStack11.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 18/07/24.
//

import SwiftUI

var platforms: [Platform] = [
    .init(name: "XBox", imageName:  "xbox.logo", color: .green),
    .init(name: "PlayStattion", imageName: "playstation.logo", color: .indigo),
    .init(name: "PC", imageName: "pc", color: .red),
    .init(name: "Mobile", imageName: "iphone", color: .mint)
]

struct NavigationStack11: View {
    var body: some View {
        NavigationStack {
            List{
            Section("Platforms") {
                ForEach(platforms, id: \.self) { platform in
                    NavigationLink(value: platform) {
                        Label(platform.name, systemImage: platform.imageName )
                            .foregroundStyle(platform.color)
                    }
                    .navigationDestination(for: Platform.self) { platform in
//                        ZStack{
//                            platform.color.ignoresSafeArea()
//                            Label(platform.name, systemImage: platform.imageName)
//                                .font(.largeTitle)
//                            
//                        }
                        ScrollViewReaderr()
                        GeometryReaderr()
                    }
                }
            }
            .navigationTitle("Gaming")
            
        }
    }
    }
}

#Preview {
    NavigationStack11()
}


struct Platform: Hashable {
    let name: String
    let imageName: String
    let color: Color
}

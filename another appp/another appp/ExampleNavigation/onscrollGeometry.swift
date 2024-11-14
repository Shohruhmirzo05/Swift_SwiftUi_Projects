//
//  onscrollGeometry.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 13/07/24.
//

import SwiftUI

struct ContentView1: View {
    @State private var scrollOffset: CGFloat = 0.0

    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<100) { index in
                    Text("Item \(index)")
                        .padding()
                }
            }
            .background(GeometryReader { geometry in
                Color.clear
                    .preference(key: ScrollOffsetKey.self, value: geometry.frame(in: .named("scroll")).minY)
            })
        }
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ScrollOffsetKey.self) { value in
            self.scrollOffset = value
            // Perform actions based on scroll offset
            print("Scroll offset: \(scrollOffset)")
        }
    }
}

struct ScrollOffsetKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue: CGFloat = 0.0

    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    ContentView1()
}



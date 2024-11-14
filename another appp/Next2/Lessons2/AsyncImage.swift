//
//  AsyncImage.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 15/07/24.
//

import SwiftUI

struct AsyncImage1: View {
    let sampleUrl = URL(string: "https://pixabay.com/photos/fence-chain-link-bokeh-lights-1869401/")
    var body: some View {
        AsyncImage(url: sampleUrl)
    }
}

#Preview {
    AsyncImage1()
}

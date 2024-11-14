//
//  TestView.swift
//  InoMarket
//
//  Created by Shohjahon Rakhmatov on 10/07/24.
//  Copyright © 2024 ZBEKZ GROUP, LLC. All rights reserved.
//

import SwiftUI

struct IbratS: View {
    
    @State private var showTitle = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    TitleView()
                    Text("Bugun nimani o'rganmoqchisiz?")
                        .font(.system(size: 14))
                        .foregroundStyle(Color.gray)
                    CardView()
                }
                .padding(20)
            }
            .coordinateSpace(name: "SCROLLCONTENT")
            .navigationTitle(showTitle ? "Salom Shoxruxmirzo" : "")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("SA")
                        .padding(8)
                        .background(Color.green.gradient)
                        .clipShape(Circle())
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "bell")
                    }
                }
            }
        }
    }
    
    @ViewBuilder func CardView() -> some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Yakunlandi")
                    .fontWeight(.semibold)
                    .padding(8)
                    .background(.ultraThinMaterial)
                    .clipShape(.rect(cornerRadius: 8, style: .continuous))
                VStack(alignment: .leading) {
                    Text("Londonga 7 kunlik")
                        .fontWeight(.bold)
                        .textCase(.uppercase)
                    Text("sayohat yo'llanmasini qo'lga kiriting!")
                        .font(.system(size: 12))
                        .multilineTextAlignment(.leading)
                }
                .frame(maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 14))
            .foregroundStyle(Color.white)
            Image(.cupChild2)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.orange)
        .clipShape(.rect(cornerRadius: 20, style: .continuous))
    }
    
    @ViewBuilder func TitleView() -> some View {
        Text("Salom Shoxruxmirzo")
            .font(.title)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background {
                GeometryReader { geometry in
                    let minY = geometry.frame(in: .named("SCROLLCONTENT")).minY
                    Color.clear
                        .onChange(of: minY) { newValue in
                            showTitle = newValue < -35
                        }
                }
            }
    }
}

#Preview {
    IbratS()
}


//
//  IbratLanguage.swift
//  another appp
//
//  Created by Shohruhmirzo Alijonov on 10/07/24.
//

import SwiftUI

struct IbratLanguage22: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 20) {
                    // Top navigation bar
                    HStack {
                        Button {
                            // Person button action
                        } label: {
                            Image(systemName: "person")
                                .foregroundStyle(.blue)
                                .font(.system(size: 40))
                                .padding(.leading, 20)
                        }
                        Spacer()
                        Button {
                            // Bell button action
                        } label: {
                            Image(systemName: "bell.badge")
                                .foregroundStyle(.blue)
                                .font(.system(size: 30))
                                .padding(.trailing, 20)
                        }
                    }
                    .padding(.top, 10)

                    // Main content
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Salom Shohruhmirzo")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal, 20)

                        Text("Bugun nimani o'rganmoqchisiz ?")
                            .font(.title3)
                            .padding(.horizontal, 20)

                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(maxWidth: 350, maxHeight: 200)
                            .foregroundStyle(.orange)
                            .overlay(
                                HStack {
                                    VStack(alignment: .leading, spacing: 5) {
                                        RoundedRectangle(cornerRadius: 10.0)
                                            .frame(width: 120, height: 40)
                                            .foregroundStyle(.white)
                                            .opacity(0.3)
                                            .overlay(
                                                Text("Yakunlandi")
                                                    .foregroundStyle(.white)
                                                    .font(.subheadline)
                                                    .fontWeight(.bold)
                                            )

                                        Text("Ibrat Marafon")
                                            .font(.title2)
                                            .foregroundStyle(.white)
                                            .fontWeight(.bold)
                                            .padding(.top, 5)

                                        Text("Londonga 7 kunlik")
                                            .font(.caption)
                                            .foregroundStyle(.white)
                                            .fontWeight(.bold)

                                        Text("sayohat yo'llanmasini qo'lga kiriting")
                                            .foregroundStyle(.white)
                                            .font(.caption2)
                                    }
                                    .padding()

                                    Image("cupChild")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(maxHeight: .infinity)
                                }
                            )
                            .padding(.horizontal, 20)

                        Text("Barcha kurslar")
                            .font(.headline)
                            .padding(.horizontal, 20)
                            .padding(.top, 40)
                    }
                    .padding(.top, 20)
                }
            }

            // Footer buttons
            HStack {
                Button(action: {
                    // Action for first button
                }) {
                    Text("Button 1")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Button(action: {
                    // Action for second button
                }) {
                    Text("Button 2")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            .background(Color(.systemBackground).edgesIgnoringSafeArea(.bottom))
        }
    }
}

#Preview {
    IbratLanguage22()
}

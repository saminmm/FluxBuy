//
//  FashionView.swift
//  FluxBuy
//
//  Created by samin mirali on 17/12/24.
//

import SwiftUI

struct FashionView: View {
    @State private var selectedGender = "Women"
    var body: some View {
        NavigationView {
            VStack {
                Text("Tap on Top or Bottom of the Image!")
                    .font(.headline)
                   
                GeometryReader { geometry in
                    Image(selectedGender == "Women" ? "Image 15" : "Image 16")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width, height: 400)
                        .overlay(
                            VStack(spacing: 0) {
                                
                                NavigationLink(destination: TopPageView()) {
                                    Rectangle()
                                        .foregroundColor(.clear) // Transparent button
                                        .frame(height: 200)
                                }
                                .background(Color.black.opacity(0.001))
                                
                                
                                NavigationLink(destination: BottomPageView()) {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(height: 200)
                                }
                                .background(Color.black.opacity(0.001))
                            }
                        )
                        .cornerRadius(12)
                }
                .frame(height: 400)
                
                .navigationBarTitleDisplayMode(.inline)
                
                Picker("Gender", selection: $selectedGender) {
                    Text("Women").tag("Women")
                    Text("Men").tag("Men")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(20)
                
            }
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    FashionView()
}

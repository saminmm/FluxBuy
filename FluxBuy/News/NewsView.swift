//
//  NewsView.swift
//  FluxBuy
//
//  Created by samin mirali on 17/12/24.
//

import SwiftUI

struct NewsView: View {
    var outfits: [Outfit]
    @EnvironmentObject var favoritesManager: FavoritesManager
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach(newsOutfits) { outfit in
                    VStack {
                        Image(outfit.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120,height: 120)
                            .padding(20)
                            .background(Color(#colorLiteral(red: 0.9342129827, green: 0.9292460084, blue: 0.9207152724, alpha: 1)))
                            .cornerRadius(14)
                        
                        HStack(spacing: 50){
                        Text(outfit.name)
                                .font(.callout)
                            
                            Button(action: {
                                favoritesManager.addToFavorites(outfit)
                            }) {
                                Image(systemName: "heart.square")
                                   
                                    .foregroundColor(Color(#colorLiteral(red: 0.4175323248, green: 0.7492563128, blue: 0.5844213367, alpha: 1)))
                                    .font(.title2)
                            }
                        }
                        Text(outfit.price)
                            .font(.headline)
                            .foregroundColor(.red)
                            .padding(.trailing,120)
                        
                    }.padding(10)
                }
            }
        }
    }
}
#Preview {
    NewsView(outfits: newsOutfits)
}

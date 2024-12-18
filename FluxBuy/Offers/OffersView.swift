//
//  OffersView.swift
//  FluxBuy
//
//  Created by samin mirali on 17/12/24.
//

import SwiftUI

struct OffersView: View {
    var outfits: [Outfit]
    @EnvironmentObject var favoritesManager: FavoritesManager
    
    let column3 = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: column3, spacing: 20) {
                ForEach(outfits) { outfit in
                    VStack(spacing: 8) {
                     
                        Image(outfit.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipped()
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                            )
                
                        VStack(spacing: 4) {
                            Text(outfit.name)
                                .font(.headline)
                                .foregroundColor(.primary)
                                .lineLimit(1)
                            Text(outfit.price)
                                .font(.subheadline)
                                .foregroundColor(.red)
                        }
                        
                  
                        Button(action: {
                            favoritesManager.saveOutfit(outfit)
                        }) {
                            HStack {
                                Image(systemName: "bookmark.fill")
                                    .foregroundColor(.blue)
                                Text("Save")
                                    .font(.caption)
                                    .foregroundColor(.blue)
                            }
                            .padding(.vertical, 5)
                            .frame(maxWidth: .infinity)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct OffersView_Previews: PreviewProvider {
    static var previews: some View {
        OffersView(outfits: offersOutfits)
    }
}

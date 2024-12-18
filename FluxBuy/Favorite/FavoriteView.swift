//
//  FavoriteView.swift
//  FluxBuy
//
//  Created by samin mirali on 17/12/24.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    
    var body: some View {
        NavigationView {
            VStack {
                if favoritesManager.savedOutfits.isEmpty {
                    
                    Image("Image 25")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Text("Your favorites are empty!\n Save outfits you love and find them here.")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                       
                } else {
                    List {
                        ForEach(favoritesManager.savedOutfits) { outfit in
                            HStack {
                                Image(outfit.imageName)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(8)
                                VStack(alignment: .leading) {
                                    Text(outfit.name)
                                        .font(.headline)
                                    Text(outfit.price)
                                        .foregroundColor(.red)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FavoriteView()
}

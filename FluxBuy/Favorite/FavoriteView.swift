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
                    Text("No saved outfits yet!")
                        .foregroundColor(.gray)
                        .font(.title2)
                        .padding()
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
            .navigationTitle("Saved Outfits")
        }
    }
}

#Preview {
    FavoriteView()
}

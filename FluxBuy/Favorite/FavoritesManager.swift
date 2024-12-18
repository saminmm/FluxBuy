//
//  FavoritesManager.swift
//  FluxBuy
//
//  Created by samin mirali on 18/12/24.
//

import SwiftUI

class FavoritesManager: ObservableObject {
    @Published var savedOutfits: [Outfit] = []
    
    func saveOutfit(_ outfit: Outfit) {
        if !savedOutfits.contains(where: { $0.id == outfit.id }) {
            savedOutfits.append(outfit)
        }
    }
}

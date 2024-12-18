//
//  FluxBuyApp.swift
//  FluxBuy
//
//  Created by samin mirali on 16/12/24.
//

import SwiftUI

@main
struct FluxBuyApp: App {
    @StateObject var favoritesManager = FavoritesManager()
    @StateObject var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(favoritesManager)
                .environmentObject(cartManager)
        }
    }
}

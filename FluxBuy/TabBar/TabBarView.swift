//
//  TabBarView.swift
//  FluxBuy
//
//  Created by samin mirali on 16/12/24.
//
import SwiftUI
struct TabBarView: View {
    var body: some View {
        TabView{
                DiscoverView()
                .tabItem{
                    Label("Discover", systemImage: "house.fill")
                }
      
                FavoriteView()
            
                .tabItem{
                    Label("Save", systemImage: "heart")
                }
            
                CartView()
               .tabItem{
                    Label("Cart", systemImage: "cart")
                }
           
                AccountView()
                .tabItem{
                    Label("Account", systemImage: "person.fill")
                }
            
        }.tint(Color(#colorLiteral(red: 0.4175323248, green: 0.7492563128, blue: 0.5844213367, alpha: 1)))
    }
}

#Preview {
    TabBarView()
        .environmentObject(FavoritesManager())
        .environmentObject(CartManager())
}

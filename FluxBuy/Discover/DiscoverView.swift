//
//  DiscoverView.swift
//  FluxBuy
//
//  Created by samin mirali on 16/12/24.

import SwiftUI

struct DiscoverView: View {
    @State private var searchText = ""
    @State private var selectedSegment = 0
    @StateObject var favoritesManager = FavoritesManager()
    
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment:.leading, spacing:10) {
                Text("Discover")
                    .bold()
                    .font(.largeTitle)
                    .padding(.horizontal)
                Text("Welcome, Samin")
                    .font(.headline)
                    .padding(.horizontal)
                
                
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("What are you looking for?", text: $searchText)
                    
                }.padding(10)
                    .background((Color(#colorLiteral(red: 0.9372547865, green: 0.9372549653, blue: 0.9415605664, alpha: 1))))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                Picker(selection: $selectedSegment, label: Text("category")) {
                    Text("Inspiration").tag(0)
                    Text("Fashion").tag(1)
                    Text("Offers").tag(2)
                    Text("News").tag(3)
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                
                switch selectedSegment {
                case 0:
                    InspirationView()
                case 1:
                    FashionView()
                case 2:
                    OffersView(outfits:offersOutfits )
                case 3:
                    NewsView()
                default:
                    EmptyView()
                }
            }
        }
        
        TabView {
                    OffersView(outfits: offersOutfits)
                        .environmentObject(favoritesManager)
                        .tabItem {
                            Image(systemName: "square.grid.2x2")
                            Text("Offers")
                        }
                    
                    FavoriteView()
                        .environmentObject(favoritesManager)
                        .tabItem {
                            Image(systemName: "bookmark.fill")
                            Text("Saved")
                        }
                }
        }
    }

#Preview {
    DiscoverView()
}


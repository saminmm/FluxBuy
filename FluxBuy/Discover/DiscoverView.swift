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
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        NavigationView {
            VStack(alignment:.leading, spacing:10) {
                
                HStack(spacing:80){
                    Text("Discover")
                        .bold()
                        .font(.largeTitle)
                        .padding(.horizontal)
                    Button(action: {
                        readAloud(text: "Discover view, welcome Samin, search for items, and choose a category.")
                    }) {
                        Text("Voice Over")
                            .padding(8)
                            .background(Color(#colorLiteral(red: 0.4175323248, green: 0.7492563128, blue: 0.5844213367, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                }
                
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
                    Text("New").tag(3)
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
                    NewsView(outfits: newsOutfits)
                default:
                    EmptyView()
                }
                
            }
        }
        
    }
}
func readAloud(text: String) {
    UIAccessibility.post(notification: .announcement, argument: text)
}

#Preview {
    DiscoverView()
        .environmentObject(FavoritesManager())
        .environmentObject(CartManager())
}


//
//  DiscoverView.swift
//  FluxBuy
//
//  Created by samin mirali on 16/12/24.

import SwiftUI

//struct Outfit: Identifiable {
//    var id = UUID()
//    var imageName: String
//}

struct DiscoverView: View {
    @State private var searchText = ""
    @State private var selectedSegment = 0

    
//    let matchingOutfits = [
//        Outfit(imageName: "Image 1"),
//        Outfit(imageName: "Image 2"),
//        Outfit(imageName: "Image 1"),
//        Outfit(imageName: "Image 2"),
//        Outfit(imageName: "Image 1"),
//        Outfit(imageName: "Image 2")
//    ]
    
    let columns1 = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())
    ]
    
//    let trendingNow = [
//        Outfit(imageName: "Image 3"),
//        Outfit(imageName: "Image 4"),
//        Outfit(imageName: "Image 3"),
//        Outfit(imageName: "Image 4"),
//        Outfit(imageName: "Image 3"),
//        Outfit(imageName: "Image 4")
//    ]
    
    
    let columns2 = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Discover")
                    .bold()
                    .font(.largeTitle)
                Text("Welcome, Samin")
                    .font(.headline)
                
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("What are you looking for?", text: $searchText)
                }.padding()
                    .background((Color(#colorLiteral(red: 0.9372547865, green: 0.9372549653, blue: 0.9415605664, alpha: 1))))
                    .cornerRadius(10)
                
                Picker("Category", selection: $selectedSegment) {
                    Text("Fashion").tag(0)
                    Text("Inspiration").tag(1)
                    Text("Offers").tag(2)
                    Text("News").tag(3)
                }
                .pickerStyle(.segmented)
                .padding(.vertical)
                
                
                Text("Style Guide")
                    .bold()
                    .font(.title)
                
                Text("Matching Outfits")
                    .font(.headline)
                    .foregroundColor((Color(#colorLiteral(red: 0.6557801962, green: 0.650814712, blue: 0.6509031653, alpha: 1))))
                
                
               
                    Text("Fashion content will go here")
                    ScrollView(.horizontal){
                        LazyVGrid(columns: columns1, spacing: 20) {
                            
                            ForEach(matchingOutfits) { outfit in
                                NavigationLink(destination: DetailView(outfit: outfit)) {
                                    VStack {
                                        Image(outfit.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 100)
                                    }
                                    .padding(40)
                                    .background(Color(#colorLiteral(red: 0.9342129827, green: 0.9292460084, blue: 0.9207152724, alpha: 1)))
                                    .cornerRadius(20)
                                    
                                }
                            }
                        }
                    }
               
              
                    CategoryView(title: "Inspiration", description: "")
                    ScrollView(.horizontal){
                        LazyVGrid(columns: columns2, spacing: 20) {
                            ForEach(trendingNow) { outfit in
                                NavigationLink(destination: DetailView(outfit: outfit)) {
                                    VStack {
                                        Image(outfit.imageName) // Use the imageName for each outfit
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 100)
                                        
                                    }
                                    .padding(20)
                                    .background(Color(#colorLiteral(red: 0.9342129827, green: 0.9292460084, blue: 0.9207152724, alpha: 1)))
                                    .cornerRadius(20)
                                }
                            }
                            
                        }
                    }
                
                
                
                HStack{
                    Image("5")
                        .resizable()
                        .scaledToFit()
                        .background(Color(#colorLiteral(red: 0.9342129827, green: 0.9292460084, blue: 0.9207152724, alpha: 1)))
                        .cornerRadius(10)
                        .frame(height: 40)
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("Recently seen")
                                .font(.caption)
                            
                            Image(systemName: "eye")
                                .font(.caption)
                        }
                        Text("PULL&BEAR, High Waisted Mom Short")
                            .font(.caption2)
                    }
                    .foregroundColor((Color(#colorLiteral(red: 0.6557801962, green: 0.650814712, blue: 0.6509031653, alpha: 1))))
                    
                    Image("6")
                        .resizable()
                        .scaledToFit()
                        .background(Color(#colorLiteral(red: 0.9342129827, green: 0.9292460084, blue: 0.9207152724, alpha: 1)))
                        .cornerRadius(10)
                        .frame(height: 40)
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("Recently seen")
                                .font(.caption)
                            
                            Image(systemName: "eye")
                                .font(.caption)
                        }
                        Text("Levi's®, Straight leg jeans")
                            .font(.caption2)
                    }
                    .foregroundColor((Color(#colorLiteral(red: 0.6557801962, green: 0.650814712, blue: 0.6509031653, alpha: 1))))
                }
                .padding(.bottom,20)
                
                
            }
            
        }
    }
}

#Preview {
    DiscoverView()
}


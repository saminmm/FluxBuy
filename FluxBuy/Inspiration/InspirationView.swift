//
//  InspirationView.swift
//  FluxBuy
//
//  Created by samin mirali on 17/12/24.
//


import SwiftUI

struct InspirationView: View {
    @State private var searchText = ""
    @State private var selectedSegment = 0
    
    let columns1 = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())
    ]
    
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
            
            VStack(alignment:.leading, spacing: 10) {
                Spacer()
            Text("Style Guide")
                .bold()
                .font(.title)
                .padding(.top, 20)
            
            Text("Matching Outfits")
                .font(.headline)
                .foregroundColor((Color(#colorLiteral(red: 0.6557801962, green: 0.650814712, blue: 0.6509031653, alpha: 1))))
            
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
                            .cornerRadius(14)
                        }
                    }
                }
            }
            
            HStack{
                Image("Image 13")
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
                
                Image("Image 14")
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
        
            Text("Trending Now")
                .bold()
                .font(.title)
            Text("Popular Trends")
                .font(.headline)
                .foregroundColor((Color(#colorLiteral(red: 0.6557801962, green: 0.650814712, blue: 0.6509031653, alpha: 1))))
            
            ScrollView(.horizontal){
                LazyVGrid(columns: columns2, spacing: 20) {
                    ForEach(trendingNow) { outfit in
                        NavigationLink(destination: DetailView(outfit: outfit)) {
                            VStack {
                                Image(outfit.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 100)
                            }
                            .padding(20)
                            .background(Color(#colorLiteral(red: 0.9342129827, green: 0.9292460084, blue: 0.9207152724, alpha: 1)))
                            .cornerRadius(14)
                        }
                    }
                }
            }.padding(.bottom,50)
        }
    }.padding(.horizontal)
}
}
#Preview {
    InspirationView()
}


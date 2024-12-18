//
//  OutfitView.swift
//  FluxBuy
//
//  Created by samin mirali on 16/12/24.
//

import SwiftUI

struct Outfit: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var description: String
    var price: String
}

let matchingOutfits = [
    Outfit(name: "Vibe Fusion", imageName: "Image 2", description: "Stylish high-waisted jeans.", price: "$900"),
    Outfit(name: "Bold Combination", imageName: "Image 3", description: "Casual t-shirt and jacket.", price: "$877"),
    Outfit(name: "Chic Duo", imageName: "Image 5", description: "Elegant dress with floral design.", price: "$1450"),
    Outfit(name: "Matching Moments", imageName: "Image 6", description: "Sporty workout gear.", price: "$946"),
    Outfit(name: "Dynamic Duo", imageName: "Image 1", description: "Chic blazer for formal events.", price: "$1800"),
    Outfit(name: "Harmonized Hues", imageName: "Image 4", description: "Comfy sweater and jeans.", price: "$1250")
]

let trendingNow = [
    Outfit(name: "Outfit A", imageName: "Image 7", description: "Trendy summer dress.", price: "$60"),
    Outfit(name: "Outfit B", imageName: "Image 8", description: "Cozy winter jacket.", price: "$80"),
    Outfit(name: "Outfit C", imageName: "Image 9", description: "Casual jeans and a t-shirt.", price: "$40"),
    Outfit(name: "Outfit D", imageName: "Image 10", description: "Formal shirt and trousers.", price: "$90"),
    Outfit(name: "Outfit E", imageName: "Image 11", description: "Stylish sneakers.", price: "$50"),
    Outfit(name: "Outfit F", imageName: "Image 12", description: "Smart watch and accessories.", price: "$120")
]

let offersOutfits = [
    Outfit(name: "PULL&BEAR", imageName: "Image 13", description: "", price: "$18"),
    Outfit(name: "Levi's®", imageName: "Image 14", description: "", price: "$60"),
    Outfit(name: "WE Fashion", imageName: "Image 12", description: "", price: "$105"),
    Outfit(name: "Bershka", imageName: "Image 11", description: "", price: "$27"),
    Outfit(name: "Damart", imageName: "Image 10", description: "", price: "$77"),
    Outfit(name: "Stradivarius", imageName: "Image 17", description: "", price: "$40")
]

let newsOutfits = [
    Outfit(name: "PULL&BEAR", imageName: "Image 18", description: "", price: "$18"),
    Outfit(name: "Levi's®", imageName: "Image 19", description: "", price: "$60"),
    Outfit(name: "WE Fashion", imageName: "Image 20", description: "", price: "$105"),
    Outfit(name: "Bershka", imageName: "Image 21", description: "", price: "$27"),
    Outfit(name: "Damart", imageName: "Image 22", description: "", price: "$77"),
    Outfit(name: "Stradivarius", imageName: "Image 23", description: "", price: "$40")
]


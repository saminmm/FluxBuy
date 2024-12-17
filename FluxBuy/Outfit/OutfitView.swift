//
//  OutfitView.swift
//  FluxBuy
//
//  Created by samin mirali on 16/12/24.
//

import SwiftUI

struct Outfit: Identifiable {
    var id = UUID()// Unique ID for each outfit
    var name: String
    var imageName: String
    var description: String
    var price: String
}

let matchingOutfits = [
    Outfit(name: "Outfit 1", imageName: "Image 1", description: "Stylish high-waisted jeans.", price: "$50"),
    Outfit(name: "Outfit 2", imageName: "Image 2", description: "Casual t-shirt and jacket.", price: "$30"),
    Outfit(name: "Outfit 3", imageName: "Image 1", description: "Elegant dress with floral design.", price: "$100"),
    Outfit(name: "Outfit 4", imageName: "Image 2", description: "Sporty workout gear.", price: "$40"),
    Outfit(name: "Outfit 5", imageName: "Image 1", description: "Chic blazer for formal events.", price: "$70"),
    Outfit(name: "Outfit 6", imageName: "Image 2", description: "Comfy sweater and jeans.", price: "$45")
]

let trendingNow = [
    Outfit(name: "Outfit A", imageName: "Image 3", description: "Trendy summer dress.", price: "$60"),
    Outfit(name: "Outfit B", imageName: "Image 4", description: "Cozy winter jacket.", price: "$80"),
    Outfit(name: "Outfit C", imageName: "Image 3", description: "Casual jeans and a t-shirt.", price: "$40"),
    Outfit(name: "Outfit D", imageName: "Image 4", description: "Formal shirt and trousers.", price: "$90"),
    Outfit(name: "Outfit E", imageName: "Image 3", description: "Stylish sneakers.", price: "$50"),
    Outfit(name: "Outfit F", imageName: "Image 4", description: "Smart watch and accessories.", price: "$120")
]




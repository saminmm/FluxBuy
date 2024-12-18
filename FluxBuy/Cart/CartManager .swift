//
//  CartManager .swift
//  FluxBuy
//
//  Created by samin mirali on 18/12/24.
//

import SwiftUI

class CartManager: ObservableObject {
    @Published var cartItems: [Outfit] = []
    
    func addToCart(item: Outfit) {
        cartItems.append(item) 
    }
func removeFromCart(_ item: Outfit) {
       if let index = cartItems.firstIndex(where: { $0.id == item.id }) {
           cartItems.remove(at: index)
       }
   }

   var totalPrice: String {
       let total = cartItems.reduce(0) {
           $0 + (Double($1.price.replacingOccurrences(of: "$", with: "")) ?? 0)
       }
       return "$\(total)"
   }
}

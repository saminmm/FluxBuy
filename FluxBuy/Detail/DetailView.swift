//
//  DetailView.swift
//  FluxBuy
//
//  Created by samin mirali on 16/12/24.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var outfit: Outfit
    
    var body: some View {
        VStack {
            
            Image(outfit.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .cornerRadius(12)
            
            Text(outfit.name)
                .font(.title)
                .bold()
            
            
            Text(outfit.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            
            
            Text(outfit.price)
                .font(.title2)
                .foregroundColor(.green)
            
            Button(action: {
                            cartManager.addToCart(item: outfit)
                        }) {
                            Text("Add to Cart")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(#colorLiteral(red: 0.4175323248, green: 0.7492563128, blue: 0.5844213367, alpha: 1)))
                                .cornerRadius(10)
                        }
                        .padding(.bottom, 100)
                    }
    }
}
#Preview {
    DetailView(outfit: matchingOutfits[0])
           
}


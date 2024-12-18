//
//  CartView.swift
//  FluxBuy
//
//  Created by samin mirali on 17/12/24.
//

import SwiftUI
struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
            VStack {
                if cartManager.cartItems.isEmpty {
                    Image("Image 24")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                  
                    Text("Your cart is empty!\n Discover everything we've got for you.")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        
                } else {
                    List {
                        ForEach(cartManager.cartItems) { item in
                            HStack {
                                Image(item.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(8)

                                VStack(alignment: .leading) {
                                    Text(item.name)
                                        .font(.headline)
                                    Text(item.price)
                                        .font(.subheadline)
                                        .foregroundColor(.green)
                                }

                                Spacer()

                                Button(action: {
                                    cartManager.removeFromCart(item)
                                }) {
                                    Text("Remove")
                                        .font(.caption)
                                        
                                }.accessibilityLabel("Remove this outfit from your cart")
                            }
                        }
                    }
                    .listStyle(PlainListStyle())

                    HStack {
                        Text("Total Price:")
                            .font(.headline)
                        Spacer()
                        Text(cartManager.totalPrice)
                            .font(.headline)
                            .foregroundColor(Color(#colorLiteral(red: 0.4175323248, green: 0.7492563128, blue: 0.5844213367, alpha: 1)))
                    }
                    .padding()

                    Button(action: {
                        print("Proceeding to checkout")
                    }) {
                        Text("Check Out")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(#colorLiteral(red: 0.4175323248, green: 0.7492563128, blue: 0.5844213367, alpha: 1)))
                            .cornerRadius(14)
                    }
                    .padding()
                }
            }
            .navigationTitle("Your Cart")
        }
    }

#Preview {
        CartView()
           
}

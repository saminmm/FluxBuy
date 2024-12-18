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
                    Text("Your cart is empty.")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .padding()
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
                                        .foregroundColor(.red)
                                }
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
                            .foregroundColor(.green)
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

//
//  DetailView.swift
//  FluxBuy
//
//  Created by samin mirali on 16/12/24.
//

import SwiftUI

struct DetailView: View {
    var outfit: Outfit
    
    var body: some View {
        VStack(spacing: 20) {
            
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
            
            Spacer()
        }
        .navigationTitle(outfit.name) // Set the title to the outfit's name
        .navigationBarTitleDisplayMode(.inline) // Keep the title inline with the navigation bar
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(outfit: matchingOutfits[0]) // Preview with the first outfit
    }
}


//
//  CategoryView.swift
//  FluxBuy
//
//  Created by samin mirali on 16/12/24.
//

import SwiftUI

struct CategoryView: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
                .font(.title)
            Text(description)
                .font(.headline)
                .foregroundColor(Color(#colorLiteral(red: 0.655, green: 0.650, blue: 0.650, alpha: 1)))
        }
    }
}

#Preview {
    CategoryView(
        title: "Matching Outfits",
        description: "Explore the latest in fashion"
    )
}


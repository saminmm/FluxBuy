//
//  TabBarView.swift
//  FluxBuy
//
//  Created by samin mirali on 16/12/24.
//
import SwiftUI

struct TabBarView: View {
    @Binding var selectedTab: String
    let tabs = ["Fashion", "Inspiration", "Offers", "New"]
    
    var body: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                Button(action: {
                    selectedTab = tab
                }) {
                    Text(tab)
                        .fontWeight(selectedTab == tab ? .bold : .regular)
                        .foregroundColor(selectedTab == tab ? .green : .gray)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                }
            }
        }
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}
#Preview{
   @State var previewSelectedTab = "Inspiration"
return TabBarView(selectedTab: $previewSelectedTab)
}

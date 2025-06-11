//
//  HomeView.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Food Delivery")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 20) {
                    CategoryCard(title: "Restaurants", icon: "fork.knife", color: .orange)
                    CategoryCard(title: "HMarket", icon: "bag.fill", color: .green)
                    CategoryCard(title: "Supermarkets", icon: "cart.fill", color: .blue)
                    CategoryCard(title: "Track Order", icon: "location.fill", color: .purple)
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Top Hit")
        }
    }
}

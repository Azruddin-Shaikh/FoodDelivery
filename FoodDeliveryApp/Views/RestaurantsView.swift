//
//  RestaurantsView.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import SwiftUI

struct RestaurantsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Browse Restaurants")
                    .font(.title)
                    .padding()
                
                // Add your restaurants content here
                
                Spacer()
            }
            .navigationTitle("Restaurants")
        }
    }
}

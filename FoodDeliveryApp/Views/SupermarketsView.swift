//
//  SupermarketsView.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import SwiftUI

struct SupermarketsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Supermarkets")
                    .font(.title)
                    .padding()
                
                // Add your supermarkets content here
                
                Spacer()
            }
            .navigationTitle("Supermarkets")
        }
    }
}

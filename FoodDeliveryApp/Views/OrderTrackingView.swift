//
//  OrderTrackingView.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import SwiftUI

struct OrderTrackingView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Track Your Orders")
                    .font(.title)
                    .padding()
                
                // Add order tracking content here
                
                Spacer()
            }
            .navigationTitle("Order Tracking")
            .navigationBarItems(trailing: Button("Done") {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

//
//  ReorderView.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import SwiftUI

struct ReorderView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Reorder Previous Items")
                    .font(.title)
                    .padding()
                
                // Add reorder content here
                
                Spacer()
            }
            .navigationTitle("Reorder")
            .navigationBarItems(trailing: Button("Done") {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

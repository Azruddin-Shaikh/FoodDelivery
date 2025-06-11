//
//  ContentView.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        TabView(selection: $navigationManager.selectedTab) {
            // Home Tab
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            // Restaurants Tab
            RestaurantsView()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Restaurants")
                }
                .tag(1)
            
            // HMarket Tab
            HMarketView()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("HMarket")
                }
                .tag(2)
            
            // Supermarkets Tab
            SupermarketsView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Supermarkets")
                }
                .tag(3)
        }
        .sheet(isPresented: $navigationManager.showSearch) {
            SearchView()
        }
        .sheet(isPresented: $navigationManager.showOrderTracking) {
            OrderTrackingView()
        }
        .sheet(isPresented: $navigationManager.showReorder) {
            ReorderView()
        }
    }
}


#Preview {
    ContentView()
}

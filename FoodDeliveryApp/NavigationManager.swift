//
//  NavigationManager.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import Foundation

class NavigationManager: ObservableObject {
    @Published var selectedTab: Int = 0
    @Published var showSearch: Bool = false
    @Published var showOrderTracking: Bool = false
    @Published var showReorder: Bool = false
    @Published var searchQuery: String = ""
    
    func navigateToRestaurants() {
        DispatchQueue.main.async {
            self.selectedTab = 1
        }
    }
    
    func navigateToSupermarkets() {
        DispatchQueue.main.async {
            self.selectedTab = 3
        }
    }
    
    func navigateToHMarket() {
        DispatchQueue.main.async {
            self.selectedTab = 2
        }
    }
    
    func navigateToOrderTracking() {
        DispatchQueue.main.async {
            self.showOrderTracking = true
        }
    }
    
    func navigateToSearch(query: String = "") {
        DispatchQueue.main.async {
            self.searchQuery = query
            self.showSearch = true
        }
    }
    
    func navigateToReorder() {
        DispatchQueue.main.async {
            self.showReorder = true
        }
    }
}

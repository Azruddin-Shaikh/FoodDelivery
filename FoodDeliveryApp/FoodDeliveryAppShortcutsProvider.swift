//
//  FoodDeliveryAppShortcutsProvider.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import Foundation
import AppIntents
import UIKit

struct FoodDeliveryAppShortcutsProvider: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        return [
            // Order Food - Main restaurants shortcut
            AppShortcut(
                intent: OrderFoodIntent(),
                phrases: [
                    "Order food on \(.applicationName)",
                    "Browse restaurants",
                    "I want to order food",
                    "Show me restaurants on \(.applicationName)",
                    "Order from restaurants"
                ],
                shortTitle: "Order Food",
                systemImageName: "fork.knife"
//                icon: .asset("restaurant_shortcut_icon")
            ),
            
            // Grocery Shopping - Supermarkets shortcut
            AppShortcut(
                intent: GroceryShoppingIntent(),
                phrases: [
                    "Shop groceries on \(.applicationName)",
                    "Order groceries",
                    "Browse supermarkets",
                    "I need groceries",
                    "Shop from supermarkets"
                ],
                shortTitle: "Groceries",
                systemImageName: "cart.fill"
            ),
            
            // HMarket - Specific to HMarket section
            AppShortcut(
                intent: HMarketIntent(),
                phrases: [
                    "Open HMarket",
                    "Browse HMarket on \(.applicationName)",
                    "Shop at HMarket",
                    "HMarket groceries"
                ],
                shortTitle: "HMarket",
                systemImageName: "bag.fill"
            ),
            
            // Track Order - Order status
            AppShortcut(
                intent: TrackOrderIntent(),
                phrases: [
                    "Track my order on \(.applicationName)",
                    "Check order status",
                    "Where is my order",
                    "Order tracking",
                    "Show my orders"
                ],
                shortTitle: "Track Order",
                systemImageName: "location.fill"
            ),
            
            // Search Food
            AppShortcut(
                intent: SearchFoodIntent(),
                phrases: [
                    "Search food on \(.applicationName)",
                    "Find restaurants",
                    "Look for food",
                    "Search for groceries"
                ],
                shortTitle: "Search",
                systemImageName: "magnifyingglass"
            ),
            
            // Reorder - Quick reorder
            AppShortcut(
                intent: ReorderIntent(),
                phrases: [
                    "Reorder on \(.applicationName)",
                    "Order again",
                    "Repeat last order",
                    "Quick reorder"
                ],
                shortTitle: "Reorder",
                systemImageName: "arrow.clockwise"
            )
        ]
    }
}

//
//  FoodDeliveryAppApp.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import SwiftUI

@main
struct FoodDeliveryApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject private var navigationManager = NavigationManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(navigationManager)
                .onOpenURL { url in
                    handleDeepLink(url)
                }
        }
    }
    
    private func handleDeepLink(_ url: URL) {
            // Handle deep linking from shortcuts
            print("Handling deep link: \(url)")
            
            let path = url.path
            let scheme = url.scheme
            
            if scheme == "fooddelivery" {
                switch url.host {
                case "restaurants":
                    navigationManager.navigateToRestaurants()
                case "supermarkets":
                    navigationManager.navigateToSupermarkets()
                case "hmarket":
                    navigationManager.navigateToHMarket()
                case "orders":
                    navigationManager.navigateToOrderTracking()
                case "search":
                    let query = url.query?.replacingOccurrences(of: "q=", with: "") ?? ""
                    navigationManager.navigateToSearch(query: query)
                case "reorder":
                    navigationManager.navigateToReorder()
                default:
                    break
                }
            } else {
                // Handle regular deep links
                switch path {
                case "/restaurants":
                    navigationManager.navigateToRestaurants()
                case "/supermarkets":
                    navigationManager.navigateToSupermarkets()
                case "/hmarket":
                    navigationManager.navigateToHMarket()
                case "/orders":
                    navigationManager.navigateToOrderTracking()
                case "/search":
                    navigationManager.navigateToSearch()
                case "/reorder":
                    navigationManager.navigateToReorder()
                default:
                    break
                }
            }
        }
}

//
//  AppDelegate.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Setup notification observers for shortcut actions
        setupShortcutNotifications()
        
        return true
    }
    
    
    private func setupShortcutNotifications() {
        NotificationCenter.default.addObserver(
            forName: NSNotification.Name("NavigateToRestaurants"),
            object: nil,
            queue: .main
        ) { notification in
            // Handle navigation to restaurants
            self.navigateToSection(.restaurants)
        }
        
        NotificationCenter.default.addObserver(
            forName: NSNotification.Name("NavigateToSupermarkets"),
            object: nil,
            queue: .main
        ) { notification in
            // Handle navigation to supermarkets
            self.navigateToSection(.supermarkets)
        }
        
        NotificationCenter.default.addObserver(
            forName: NSNotification.Name("NavigateToHMarket"),
            object: nil,
            queue: .main
        ) { notification in
            // Handle navigation to HMarket
            self.navigateToSection(.hmarket)
        }
        
        NotificationCenter.default.addObserver(
            forName: NSNotification.Name("NavigateToOrderTracking"),
            object: nil,
            queue: .main
        ) { notification in
            // Handle navigation to order tracking
            self.navigateToSection(.orderTracking)
        }
        
        NotificationCenter.default.addObserver(
            forName: NSNotification.Name("NavigateToSearch"),
            object: nil,
            queue: .main
        ) { notification in
            // Handle navigation to search
            if let userInfo = notification.userInfo,
               let query = userInfo["query"] as? String {
                self.navigateToSearch(with: query)
            } else {
                self.navigateToSection(.search)
            }
        }
        
        NotificationCenter.default.addObserver(
            forName: NSNotification.Name("NavigateToReorder"),
            object: nil,
            queue: .main
        ) { notification in
            // Handle navigation to reorder
            self.navigateToSection(.reorder)
        }
    }
    
    private func navigateToSection(_ section: AppSection) {
        guard let keyWindow = UIApplication.shared.connectedScenes
                .compactMap({ $0 as? UIWindowScene })
                .flatMap({ $0.windows })
                .first(where: { $0.isKeyWindow }),
              let rootViewController = keyWindow.rootViewController,
              let tabBarController = getTabBarController(from: rootViewController) else {
            return
        }

        switch section {
        case .restaurants:
            tabBarController.selectedIndex = 1
        case .supermarkets:
            tabBarController.selectedIndex = 3
        case .hmarket:
            tabBarController.selectedIndex = 2
        default:
            break
        }
    }
    
    private func getTabBarController(from root: UIViewController?) -> UITabBarController? {
        if let tab = root as? UITabBarController {
            return tab
        }
        if let nav = root as? UINavigationController {
            return getTabBarController(from: nav.viewControllers.first)
        }
        for child in root?.children ?? [] {
            if let found = getTabBarController(from: child) {
                return found
            }
        }
        return nil
    }
    
    private func navigateToSearch(with query: String) {
        // Implement search navigation with pre-filled query
        print("Navigating to search with query: \(query)")
    }
}

// MARK: - App Section Enum
enum AppSection {
    case restaurants
    case supermarkets
    case hmarket
    case orderTracking
    case search
    case reorder
}

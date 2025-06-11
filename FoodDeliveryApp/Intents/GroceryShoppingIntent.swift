//
//  GroceryShoppingIntent.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import Foundation
import AppIntents
import UIKit

struct GroceryShoppingIntent: AppIntent {
    static var title: LocalizedStringResource = "Shop Groceries"
    static var description = IntentDescription("Browse and order groceries from supermarkets")
    static var openAppWhenRun: Bool = true
    
    @Parameter(title: "Store Type", default: "supermarkets")
    var storeType: String
    
    func perform() async throws -> some IntentResult & ReturnsValue<String> {
        
        NotificationCenter.default.post(
            name: NSNotification.Name("NavigateToSupermarkets"),
            object: nil,
            userInfo: ["category": storeType]
        )
        
        return .result(value: storeType)
    }
}

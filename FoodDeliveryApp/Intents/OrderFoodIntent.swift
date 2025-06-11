//
//  OrderFoodIntent.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import Foundation
import AppIntents
import UIKit

struct OrderFoodIntent: AppIntent {
    static var title: LocalizedStringResource = "Order Food"
    static var description = IntentDescription("Quickly browse restaurants and order food")
    static var openAppWhenRun: Bool = true
    
    @Parameter(title: "Restaurant Type", default: "restaurants")
    var category: String
    
    func perform() async throws -> some IntentResult & ReturnsValue<String> {
        
        NotificationCenter.default.post(
            name: NSNotification.Name("NavigateToRestaurants"),
            object: nil,
            userInfo: ["category": category]
        )
        
        return .result(value: category)
    }
//    func perform() async throws -> some IntentResult & OpensIntent {
//        print("Opening food ordering for category: \(category)")
//        
//        // Post notification after a small delay to ensure app is ready
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//            NotificationCenter.default.post(
//                name: NSNotification.Name("NavigateToRestaurants"),
//                object: nil,
//                userInfo: ["category": category]
//            )
//        }
//        
//        return .result(opensIntent: OpenURLIntent(URL(string: "fooddelivery://restaurants")!))
//    }
}

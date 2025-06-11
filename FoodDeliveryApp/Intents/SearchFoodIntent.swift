//
//  SearchFoodIntent.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import Foundation
import AppIntents
import UIKit


struct SearchFoodIntent: AppIntent {
    static var title: LocalizedStringResource = "Search Food"
    static var description = IntentDescription("Search for restaurants, dishes, or groceries")
    static var openAppWhenRun: Bool = true
    
    @Parameter(title: "Search Query")
    var query: String?
    
    func perform() async throws -> some IntentResult & ReturnsValue<String> {
        
        NotificationCenter.default.post(
            name: NSNotification.Name("NavigateToSearch"),
            object: nil,
            userInfo: ["query": query ?? ""]
        )
        
        return .result(value: "Search Food")
    }
}

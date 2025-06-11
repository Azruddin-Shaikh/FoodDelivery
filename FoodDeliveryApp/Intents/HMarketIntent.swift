//
//  HMarketIntent.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import Foundation
import AppIntents
import UIKit

struct HMarketIntent: AppIntent {
    static var title: LocalizedStringResource = "Browse HMarket"
    static var description = IntentDescription("Open HMarket for fresh groceries and essentials")
    static var openAppWhenRun: Bool = true
    
    func perform() async throws -> some IntentResult & ReturnsValue<String> {
        
        NotificationCenter.default.post(
            name: NSNotification.Name("NavigateToHMarket"),
            object: nil
        )
        
        return .result(value: "Browse HMarket")
    }
}

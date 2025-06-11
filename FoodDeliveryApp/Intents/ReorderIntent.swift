//
//  ReorderIntent.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//

import Foundation
import AppIntents
import UIKit

struct ReorderIntent: AppIntent {
    static var title: LocalizedStringResource = "Reorder"
    static var description = IntentDescription("Quickly reorder from your recent orders")
    static var openAppWhenRun: Bool = true
    
    func perform() async throws -> some IntentResult & ReturnsValue<String> {
        
        NotificationCenter.default.post(
            name: NSNotification.Name("NavigateToReorder"),
            object: nil
        )
        
        return .result(value: "Reorder")
    }
}

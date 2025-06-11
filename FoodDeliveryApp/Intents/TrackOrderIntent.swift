//
//  TrackOrderIntent.swift
//  FoodDeliveryApp
//
//  Created by Azruddin Shaikh on 11/06/25.
//


import Foundation
import AppIntents
import UIKit

struct TrackOrderIntent: AppIntent {
    static var title: LocalizedStringResource = "Track Order"
    static var description = IntentDescription("Check the status of your current orders")
    static var openAppWhenRun: Bool = true
    
    func perform() async throws -> some IntentResult & ReturnsValue<String> {
        
        NotificationCenter.default.post(
            name: NSNotification.Name("NavigateToOrderTracking"),
            object: nil
        )
        
        return .result(value: "Track Order")
    }
}

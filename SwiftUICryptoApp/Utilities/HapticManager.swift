//
//  HapticManager.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-07-01.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}

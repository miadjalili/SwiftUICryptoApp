//
//  UIApplication.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-06-26.
//

import Foundation
import SwiftUI



extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

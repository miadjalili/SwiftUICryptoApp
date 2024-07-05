//
//  String.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-07-05.
//

import Foundation


extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}

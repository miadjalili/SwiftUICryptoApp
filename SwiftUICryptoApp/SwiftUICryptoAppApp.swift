//
//  SwiftUICryptoAppApp.swift
//  SwiftUICryptoApp
//
//  Created by Miad Jalili on 2024-06-23.
//

import SwiftUI

@main
struct SwiftUICryptoAppApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .toolbar(.hidden)
        }
        .environmentObject(vm)
    }
}

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
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .toolbar(.hidden)
        }
        .environmentObject(vm)
    }
}

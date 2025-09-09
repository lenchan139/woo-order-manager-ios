//
//  Woo_Order_ManagerApp.swift
//  Woo Order Manager
//
//  Created by Len Chan on 8/9/2025.
//

import SwiftUI

@main
struct Woo_Order_ManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: WooProfileData.self)
        }
    }
}

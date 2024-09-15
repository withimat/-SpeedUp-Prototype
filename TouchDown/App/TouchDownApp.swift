//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by İmat Gökaslan on 6.09.2024.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}

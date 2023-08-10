//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Islam Rahiem on 08/08/2023.
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

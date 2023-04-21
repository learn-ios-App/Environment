//
//  EnvironmentApp.swift
//  Environment
//
//  Created by 渡邊魁優 on 2023/04/21.
//

import SwiftUI

@main
struct EnvironmentApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(NumberData())
        }
    }
}

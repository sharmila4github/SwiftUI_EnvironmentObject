//
//  EnvironmentObjectDemoApp.swift
//  EnvironmentObjectDemo
//
//  Created by Raghav Deo on 14/07/23.
//

import SwiftUI

@main
struct EnvironmentObjectDemoApp: App {
    var setting  = GameSettings()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(setting)
        }
    }
}

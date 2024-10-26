//
//  HorizonApp.swift
//  Horizon
//
//  Created by User on 26/10/2024.
//

import SwiftUI

@main
struct HorizonApp: App {
    
    @State var selectedTab: AppTab = .timeline
    var body: some Scene {
        appScene
//        WindowGroup {
//            appScene
//        }
    }
}

extension HorizonApp {
    var appScene: some Scene {
        WindowGroup(id: "MainWindow") {
            AppView(selectedTab: $selectedTab)
        }
    }
}

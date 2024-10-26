//
//  AppTab.swift
//  Horizon
//
//  Created by User on 26/10/2024.
//

import SwiftUI


@MainActor
enum AppTab: Int, Identifiable, Hashable, CaseIterable, Codable {
    case timeline
    case notifications
    case other
    
    nonisolated var id: Int {
        rawValue
    }
    
//    static func loggedOutTab() -> [AppTab] {
//        [.timeline, .settings]
//    }
    
//    static func visionOSTab() -> [AppTab] {
//        [.profile, .timeline, .notifications, .mentions, .explore, .post, .settings]
//    }
    
    func makeContentView(selectedTab: Binding<AppTab>) -> some View {
        switch self {
        case .timeline:
            return AnyView(TimeLineTab())
        case .notifications:
            return AnyView(TimeLineTab())
        case .other:
            return AnyView(EmptyView())
        }
    }
    
    var iconName: String {
      switch self {
      case .timeline:
        "rectangle.stack"
      case .notifications:
        "bell"
      case .other:
        ""
      }
    }

}




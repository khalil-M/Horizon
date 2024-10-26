//
//  AppTab.swift
//  Horizon
//
//  Created by User on 26/10/2024.
//

import Foundation


@MainActor

enum AppTab: Int, Identifiable, Hashable, CaseIterable, Codable {
    case timeline, notifications, mentions, explore, messages, settings, other
    case trendding, federal, local
    case profile
    case bookmarks
    case favorites
    case post
    case followedTags
    case lists
    case links
    
    nonisolated var id: Int {
        rawValue
    }
    
    static func loggedOutTab() -> [AppTab] {
        [.timeline, .settings]
    }
    
    static func visionOSTab() -> [AppTab] {
        [.profile, .timeline, .notifications, .mentions, .explore, .post, .settings]
    }
}



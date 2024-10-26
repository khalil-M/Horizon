//
//  tabs.swift
//  Horizon
//
//  Created by User on 26/10/2024.
//

import SwiftUI

class iOSTabs {
  enum TabEntries: String {
    case first, second, third, fourth, fifth
  }

  class Storage {
    @AppStorage(TabEntries.first.rawValue) var firstTab = AppTab.timeline
    @AppStorage(TabEntries.second.rawValue) var secondTab = AppTab.notifications
//    @AppStorage(TabEntries.third.rawValue) var thirdTab = AppTab.explore
//    @AppStorage(TabEntries.fourth.rawValue) var fourthTab = AppTab.links
//    @AppStorage(TabEntries.fifth.rawValue) var fifthTab = AppTab.profile
  }

  private let storage = Storage()
  public static let shared = iOSTabs()

  var tabs: [AppTab] {
    [firstTab, secondTab]
  }

  var firstTab: AppTab {
    didSet {
      storage.firstTab = firstTab
    }
  }

  var secondTab: AppTab {
    didSet {
      storage.secondTab = secondTab
    }
  }

  

  private init() {
    firstTab = storage.firstTab
    secondTab = storage.secondTab
  }
    

}

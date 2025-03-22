//
//  Router.swift
//  Horizon
//
//  Created by User on 14/03/2025.
//

import Foundation

@MainActor
@Observable public class RouterPath {
    
    public var path: [RouterDestination] = []
    public var presentedSheet: SheetDestination?
    
    public init() {}
    
    public func navigate(to: RouterDestination) {
        path.append(to)
    }
}


public enum RouterDestination: Hashable {
  case followers(id: String)
  case following(id: String)
  case favoritedBy(id: String)
  case rebloggedBy(id: String)
  case notificationsRequests
  case notificationForAccount(accountId: String)
  case blockedAccounts
  case mutedAccounts
}


public enum SheetDestination: Identifiable, Hashable {
    public static func == (lhs: SheetDestination, rhs: SheetDestination) -> Bool {
      lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
      hasher.combine(id)
    }
    case newStatusEditor(visibility: String)
    case quoteLinkStatusEditor(link: URL)
    case listCreate
    case addAccount
    case addRemoteLocalTimeline
    case addTagGroup
    case statusEditHistory(status: String)
    case settings
    case about
    case support
    case accountPushNotficationsSettings
    case timelineContentFilter
    case accountEditInfo
    case accountFiltersList

    public var id: String {
      switch self {
      case .newStatusEditor:
          "statusEditor"
      case .listCreate:
        "listCreate"
      case .addAccount:
        "addAccount"
      case .addTagGroup:
        "addTagGroup"
      case .addRemoteLocalTimeline:
        "addRemoteLocalTimeline"
      case .statusEditHistory:
        "statusEditHistory"
      case .settings, .support, .about, .accountPushNotficationsSettings:
        "settings"
      case .timelineContentFilter:
        "timelineContentFilter"
      case .accountEditInfo:
        "accountEditInfo"
      case .accountFiltersList:
        "accountFiltersList"
      case .quoteLinkStatusEditor(link: let link):
          "lingEditor"
      }
    }
  }

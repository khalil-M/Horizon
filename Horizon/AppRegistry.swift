//
//  AppRegistry.swift
//  Horizon
//
//  Created by User on 14/03/2025.
//

import Foundation
import SwiftUI

extension View {
    func withAppRouter() -> some View {
        navigationDestination(for: RouterDestination.self) { destination in
            switch destination {
            case let .following(id):
                EmptyView()
                //        AccountsListView(mode: .following(accountId: id))
            case let .followers(id):
                EmptyView()
                //        AccountsListView(mode: .followers(accountId: id))
            case let .favoritedBy(id):
                EmptyView()
                //        AccountsListView(mode: .favoritedBy(statusId: id))
            case let .rebloggedBy(id):
                EmptyView()
                //        AccountsListView(mode: .rebloggedBy(statusId: id))
                //        AccountsListView(mode: .accountsList(accounts: accounts))
            case .notificationsRequests:
                EmptyView()
                //        NotificationsRequestsListView()
            case let .notificationForAccount(accountId):
                EmptyView()
                //        NotificationsListView(lockedType: nil,
                //                              lockedAccountId: accountId)
            case .blockedAccounts:
                EmptyView()
                //        AccountsListView(mode: .blocked)
            case .mutedAccounts:
                EmptyView()
                //        AccountsListView(mode: .muted)
            }
        }
    }
    
    func withSheetDestinations(sheetDestinations: Binding<SheetDestination?>) -> some View {
      sheet(item: sheetDestinations) { destination in
        switch destination {
        case let .quoteLinkStatusEditor(link):
            EmptyView()
//          StatusEditor.MainView(mode: .quoteLink(link: link))
//            .withEnvironments()
        case .listCreate:
            EmptyView()
//          ListCreateView()
//            .withEnvironments()
        case .addAccount:
            EmptyView()
//          AddAccountView()
//            .withEnvironments()
        case .addRemoteLocalTimeline:
            EmptyView()
//          AddRemoteTimelineView()
//            .withEnvironments()
        case .addTagGroup:
            EmptyView()
//          EditTagGroupView()
//            .withEnvironments()
        case let .statusEditHistory(status):
            EmptyView()
//          StatusEditHistoryView(statusId: status)
//            .withEnvironments()
        case .settings:
            EmptyView()
//          SettingsTabs(isModal: true)
//            .withEnvironments()
//            .preferredColorScheme(Theme.shared.selectedScheme == .dark ? .dark : .light)
        case .accountPushNotficationsSettings:
            EmptyView()
//          if let subscription = PushNotificationsService.shared.subscriptions.first(where: { $0.account.token == AppAccountsManager.shared.currentAccount.oauthToken }) {
//            NavigationSheet { PushNotificationsView(subscription: subscription) }
//              .withEnvironments()
        case .about:
            EmptyView()
//          NavigationSheet { AboutView() }
//            .withEnvironments()
        case .support:
            EmptyView()
//          NavigationSheet { SupportAppView() }
//            .withEnvironments()
        case .timelineContentFilter:
            EmptyView()
//          NavigationSheet { TimelineContentFilterView() }
//            .presentationDetents([.medium])
//            .presentationBackground(.thinMaterial)
//            .withEnvironments()
        case .accountEditInfo:
            EmptyView()
//          EditAccountView()
//            .withEnvironments()
        case .accountFiltersList:
            EmptyView()
//          FiltersListView()
//            .withEnvironments()
        }
      }
    }
}

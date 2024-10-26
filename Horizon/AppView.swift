//
//  AppView.swift
//  Horizon
//
//  Created by User on 26/10/2024.
//

import SwiftUI

struct AppView: View {
    
    @Binding var selectedTab: AppTab
    
    @State var iosTabs = iOSTabs.shared
    
    var availableTabs: [AppTab] {
        return iosTabs.tabs
    }
    
    var body: some View {
        tabBarView
    }
    
    @ViewBuilder
    var tabBarView: some View {
        TabView(selection: .init(get: {
            selectedTab
        }, set: { newTab in
            updateTab(with: newTab)
        })) {
            ForEach(availableTabs) { tab in
                tab.makeContentView(selectedTab: $selectedTab)
                    .tabItem {
                        Image(systemName: tab.iconName)
                    }
                    .tag(tab)
//                    .badge(badgeFor(tab: tab))
                //                .toolbarBackground(theme.primaryBackgroundColor.opacity(0.30), for: .tabBar)
            }
        }
    }
    
    private func updateTab(with newTab: AppTab) {
        if selectedTab == newTab {
//          selectedTabScrollToTop = newTab.rawValue
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//            selectedTabScrollToTop = -1
          }
        } else {
//          selectedTabScrollToTop = -1
        }
        
        selectedTab = newTab
    }
}

#Preview {
    AppView(selectedTab: .constant(.notifications))
}




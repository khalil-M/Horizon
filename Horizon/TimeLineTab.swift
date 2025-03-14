//
//  TimeLineTab.swift
//  Horizon
//
//  Created by User on 26/10/2024.
//

import SwiftUI

@MainActor
struct TimeLineTab: View {
    
    
    @State private var routerPath = RouterPath()
    
    var body: some View {
        NavigationStack(path: $routerPath.path) {
            TimeLineView()
                .withAppRouter()
                .withSheetDestinations(sheetDestinations: $routerPath.presentedSheet)
                .toolbar {
                    toolbarView
                }
                .toolbarBackground(.automatic, for: .navigationBar)
            
                
        }
        
        .environment(routerPath)
    }
    
    
    @ToolbarContentBuilder
    private var toolbarView: some ToolbarContent {
        ToolbarTab(routerPath: $routerPath)
    }
}


#Preview {
    TimeLineTab()
}

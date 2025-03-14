//
//  ToolbarTab.swift
//  Horizon
//
//  Created by User on 14/03/2025.
//

import Foundation
import SwiftUI

@MainActor
struct ToolbarTab: ToolbarContent {
    
    @Binding var routerPath: RouterPath
    
    var body: some ToolbarContent {
        statusEditorToolbarItem(routerPath: routerPath)
    }
}

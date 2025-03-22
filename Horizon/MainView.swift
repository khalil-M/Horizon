//
//  MainView.swift
//  Horizon
//
//  Created by User on 15/03/2025.
//

import Foundation
import SwiftUI
extension StatusEditor {
    
    
    struct MainView: View {
        
        public var body: some View  {
            
            NavigationStack {
                ZStack(alignment: .top) {
                    ScrollView {
                        VStackLayout(spacing: 0) {
                            EditorView()
                        }
                        
                    }
                    .safeAreaInset(edge: .bottom) {
                        AccessoryView()
                    }
                    .navigationTitle("focusedSEVM.mode.title")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar { ToolbarItems() }
                }
            }
            
            EmptyView()
        }
        
    }
}

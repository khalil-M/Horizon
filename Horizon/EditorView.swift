//
//  EditorView.swift
//  Horizon
//
//  Created by User on 17/03/2025.
//

import Foundation
import SwiftUI

extension StatusEditor {
    @MainActor
    struct EditorView: View {
       
        @State var statusText = NSMutableAttributedString(string: "Khalil produce")
        
        var body: some View {
            Rectangle()
//              .fill(theme.tintColor)
              .frame(width: 2)
              .accessibilityHidden(true)
//              .padding(.leading, .layoutPadding)
            
            VStack(spacing: 0) {
//              spoilerTextView
              VStack(spacing: 0) {
                accountHeaderView
                textInput
              }
              .padding(.vertical)

              Divider()
            }
        }
        
         var textInput: some View {
             TextView($statusText)
                 .placeholder(String( "Khalil is producing"))
                 .padding(.horizontal, 20)
                 .padding(.vertical)
        }
        
        @ViewBuilder
        private var accountHeaderView: some View {
            
            HStack {
                AvatarView()
                  .accessibilityHidden(true)
 
              Spacer()

            }
            .padding(.horizontal, 20)
        }
    }
}

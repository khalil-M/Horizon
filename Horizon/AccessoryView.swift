//
//  AccessoryView.swift
//  Horizon
//
//  Created by User on 16/03/2025.
//

import Foundation
import SwiftUI

extension StatusEditor {
    
    @MainActor
    struct AccessoryView: View {
        
        var body: some View {
            
            Divider()
            HStack {
                contentView
            }
            .frame(height: 20)
            .padding(.vertical, 12)
            .background(.ultraThickMaterial)
            
        }
        
        @ViewBuilder
        private var contentView: some View {
            ViewThatFits {
                HStack(alignment: .center, spacing: 16) {
                  actionsView
                }
                .padding(.horizontal, 20)

                ScrollView(.horizontal) {
                  HStack(alignment: .center, spacing: 16) {
                    actionsView
                  }
                  .padding(.horizontal, 8)
                }
                .scrollIndicators(.hidden)
              }
        }
        
        @ViewBuilder
        private var actionsView: some View {
            Menu {
              Button {
//                isPhotosPickerPresented = true
              } label: {
                Label("status.editor.photo-library", systemImage: "photo")
              }
              Button {
              } label: {
                Label("status.editor.browse-file", systemImage: "folder")
              }
            } label : {
                  Image(systemName: "photo.on.rectangle.angled")
                
              }
            
            Button {
              // all SEVM have the same visibility value
//              followUpSEVMs.append(ViewModel(mode: .new(text: nil, visibility: focusedSEVM.visibility)))
            } label: {
              Image(systemName: "arrowshape.turn.up.left.circle.fill")
            }
            .disabled(false)
            
            Spacer()

            Button {
//              viewModel.insertStatusText(text: "@")
            } label: {
              Image(systemName: "at")
            }

            Button {
//              viewModel.insertStatusText(text: "#")
            } label: {
              Image(systemName: "number")
            }
              
        }
    }
}

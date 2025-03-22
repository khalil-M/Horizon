//
//  StatusEditorToolbarItem.swift
//  Horizon
//
//  Created by User on 14/03/2025.
//

import Foundation
import SwiftUI


@MainActor
public extension ToolbarContent {
  func statusEditorToolbarItem(routerPath _: RouterPath) -> some ToolbarContent
  {
    StatusEditorToolbarItem(visibility: "public")
  }
}


@MainActor
public struct StatusEditorToolbarItem: ToolbarContent {
  @Environment(\.openWindow) private var openWindow
  @Environment(RouterPath.self) private var routerPath

  let visibility: String

    public init(visibility: String) {
    self.visibility = visibility
  }

  public var body: some ToolbarContent {
    ToolbarItem(placement: .navigationBarTrailing) {
      Button {
        Task { @MainActor in
            routerPath.presentedSheet = .newStatusEditor(visibility: "public")
        }
      } label: {
        Image(systemName: "square.and.pencil")
          .accessibilityLabel("accessibility.tabs.timeline.new-post.label")
          .accessibilityInputLabels([
            LocalizedStringKey("accessibility.tabs.timeline.new-post.label"),
            LocalizedStringKey("accessibility.tabs.timeline.new-post.inputLabel1"),
            LocalizedStringKey("accessibility.tabs.timeline.new-post.inputLabel2"),
          ])
          .offset(y: -2)
      }
    }
  }
}

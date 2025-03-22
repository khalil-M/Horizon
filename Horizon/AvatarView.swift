//
//  AvatarView.swift
//  Horizon
//
//  Created by User on 19/03/2025.
//

import Foundation
import SwiftUI

@MainActor
public struct AvatarView: View {
    
    
    public var body: some View {
        AvatarPlaceHolder()
    }
    
//    private var adaptiveConfig: FrameConfig {
//      let cornerRadius: CGFloat = if config == .badge  {
//        config.width / 2
//      } else {
//        config.cornerRadius
//      }
//      return FrameConfig(width: config.width, height: config.height, cornerRadius: cornerRadius)
//    }
    
    @MainActor
    public struct FrameConfig: Equatable, Sendable {
      public let size: CGSize
      public var width: CGFloat { size.width }
      public var height: CGFloat { size.height }
      let cornerRadius: CGFloat

      init(width: CGFloat, height: CGFloat, cornerRadius: CGFloat = 4) {
        size = CGSize(width: width, height: height)
        self.cornerRadius = cornerRadius
      }

        public static let account = FrameConfig(width: 80, height: 80)
        public static let status = FrameConfig(width: 40, height: 40)
        public static let embed = FrameConfig(width: 34, height: 34)
        public static let badge = FrameConfig(width: 28, height: 28, cornerRadius: 14)
        public static let badgeRounded = FrameConfig(width: 28, height: 28)
        public static let list = FrameConfig(width: 20, height: 20, cornerRadius: 10)
        public static let boost = FrameConfig(width: 12, height: 12, cornerRadius: 6)
    }
}


public struct AvatarPlaceHolder: View {
//  let config: AvatarView.FrameConfig

  public var body: some View {
      RoundedRectangle(cornerSize: CGSize.zero)
      .fill(.gray)
      .frame(width: 20, height: 20)
  }
}

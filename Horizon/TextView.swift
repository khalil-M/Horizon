//
//  TextView.swift
//  Horizon
//
//  Created by User on 22/03/2025.
//

import Foundation
import SwiftUI

public struct TextView: View {
    
    @Binding private var text: NSMutableAttributedString
    
    var placeholderView: AnyView?
    var placeholderText: String?
    
    public init(_ text: Binding<NSMutableAttributedString>)
    {
      _text = text
    }
    
    public var body: some View {
        Representable(text: $text)
            .frame(
              minHeight: 44,
              maxHeight: .infinity
            )
            .accessibilityValue($text.wrappedValue.string.isEmpty ? (placeholderText ?? "Kjalilsdf") : $text.wrappedValue.string)
            .background(
                placeholderView?
                  .foregroundColor(Color(.placeholderText))
                  .multilineTextAlignment(.leading)
                  .padding(.horizontal, 0)
                  .padding(.vertical, 0)
                  .opacity(1)
                  .accessibilityHidden(true),
                alignment: .topLeading
              )
    }
}

// not clear
final class UIKitTextView: UITextView {
    override var keyCommands: [UIKeyCommand]? {
      (super.keyCommands ?? []) + [
        UIKeyCommand(input: UIKeyCommand.inputEscape, modifierFlags: [], action: #selector(escape(_:))),
      ]
    }

    @objc private func escape(_: Any) {
      resignFirstResponder()
    }
  }

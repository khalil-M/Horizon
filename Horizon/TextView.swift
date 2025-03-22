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
    
    public init(_ text: Binding<NSMutableAttributedString>)
    {
      _text = text
    }
    
    public var body: some View {
        Representable(text: $text)
            .frame(
              minHeight: 100,
              maxHeight: 300
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

//
//  Modifiers.swift
//  Horizon
//
//  Created by User on 22/03/2025.
//

import SwiftUI

public extension TextView {
    
    
    /// Specify a placeholder text
    /// - Parameter placeholder: The placeholder text
    func placeholder(_ placeholder: String) -> TextView {
      self.placeholder(placeholder) { $0 }
    }

    /// Specify a placeholder with the specified configuration
    ///
    /// Example:
    ///
    ///     TextView($text)
    ///         .placeholder("placeholder") { view in
    ///             view.foregroundColor(.red)
    ///         }
    func placeholder(_ placeholder: String, _ configure: (Text) -> some View) -> TextView {
      var view = self
      let text = Text(placeholder)
      view.placeholderView = AnyView(configure(text))
      view.placeholderText = placeholder
      return view
    }
    

    /// Specify a custom placeholder view
    func placeholder(_ placeholder: some View) -> TextView {
      var view = self
      view.placeholderView = AnyView(placeholder)
      return view
    }
}

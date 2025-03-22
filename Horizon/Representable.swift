//
//  Representable.swift
//  Horizon
//
//  Created by User on 22/03/2025.
//

import SwiftUI

extension TextView {
    
    struct Representable: UIViewRepresentable {
        
        @Binding var text: NSMutableAttributedString
        
        func makeCoordinator() -> Coordinator {
            Coordinator(text: $text)
        }
        
        
        func makeUIView(context: Context) -> UIKitTextView {
            context.coordinator.textView
        }
        func updateUIView(_: UIKitTextView, context: Context) {
            context.coordinator.textView.becomeFirstResponder()
        }
        
        
    }

  }

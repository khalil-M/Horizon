//
//  Coordinator.swift
//  Horizon
//
//  Created by User on 22/03/2025.
//

import SwiftUI

extension TextView.Representable {
    
    final class Coordinator: NSObject, UITextViewDelegate {
        
        let textView: UIKitTextView
        
        private var text: Binding<NSMutableAttributedString>
        
        init(text: Binding<NSMutableAttributedString>) {
            textView = UIKitTextView()
            textView.backgroundColor = .clear
            self.text = text
        }
    }
}

extension TextView.Representable.Coordinator {
    
    func update(representable: TextView.Representable) {
        textView.setNeedsDisplay()
    }
    

}

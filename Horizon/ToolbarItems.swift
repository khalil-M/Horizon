//
//  ToolbarItems.swift
//  Horizon
//
//  Created by User on 15/03/2025.
//

import Foundation
import SwiftUI

extension StatusEditor {
    
    @MainActor
    struct ToolbarItems: ToolbarContent {
        
        var body: some ToolbarContent {
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    Task{
                        print("POST")
                    }
                }
                label: {
                  Image(systemName: "pencil.and.list.clipboard")
                    .bold()
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    Task{
                        print("POST")
                    }
                }
                label: {
                  Image(systemName: "paperplane.fill")
                    .bold()
                }
            }
            
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    Task{
                        print("POST")
                    }
                }
                label: {
                  Image(systemName: "xmark")
                    .bold()
                }
            }
        }
        
    }
}

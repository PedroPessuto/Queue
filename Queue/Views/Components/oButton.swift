//
//  oButton.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import SwiftUI

struct oButton: View {
    
    // ========== Atributtes ==========
    private var config: Config
    private struct Config {
        var text: String
        var action: () -> Void
        var isDisabled: Bool = false
    }
    
    // ========== Functions ==========
    func isDisabled(_ isDisabled: Bool) -> oButton {
        var button = self
        button.config.isDisabled = isDisabled
        return button
    }
    
    // ========== Body ==========
    var body: some View {
        
        Button(action: {
            config.action()
        }) {
            Text(config.text.uppercased())
                .font(.system(size: 20))
                .foregroundStyle(.white)
                .fontWeight(.bold)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color("oBrown"))
        )
        .disabled(config.isDisabled)
        
    }
    
    // ========== Constructors ==========
    init(_ text: String, action: @escaping () -> Void) {
        config = Config(text: text, action: action)
    }
    
}


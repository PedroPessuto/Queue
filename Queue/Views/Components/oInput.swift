//
//  oInput.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import SwiftUI

struct oInput: View {
    
    // ========== Atributtes ==========
    private var text: String
    @Binding private var bind: String
    
    // ========== Body ==========
    var body: some View {
        TextField(text.uppercased(), text: $bind)
            .fontWeight(.bold)
            .foregroundStyle(Color("oBrown"))
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(.white))
            )
            .onChange(of: bind) { _, newValue in
                bind = newValue.uppercased()
            }
    }
    
    // ========== Constructors ==========
    init(_ text: String, _ bind: Binding<String>) {
        self.text = text
        self._bind = bind
    }
    
}

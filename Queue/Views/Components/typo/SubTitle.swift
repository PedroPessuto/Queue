//
//  SubTitle.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import SwiftUI

struct SubTitle: View {
    
    // ========== Atributtes ==========
    private var text: String
    
    // ========== Body ==========
    var body: some View {
        Text(text)
            .font(.system(size: 32))
            .fontWeight(.regular)
            .foregroundStyle(Color(.white))
    }
    
    // ========== Constructors ==========
    init(_ text: String) {
        self.text = text
    }
    
}

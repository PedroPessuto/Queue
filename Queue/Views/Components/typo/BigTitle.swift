//
//  BigTitle.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import SwiftUI

struct BigTitle: View {
    
    // ========== Atributtes ==========
    private var text: String
    
    // ========== Body ==========
    var body: some View {
        Text(text.uppercased())
            .font(.system(size: 120))
            .fontWeight(.black)
            .foregroundStyle(.white)
    }
    
    // ========== Constructors ==========
    init(_ text: String) {
        self.text = text
    }
    
}

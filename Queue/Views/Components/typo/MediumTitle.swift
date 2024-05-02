//
//  MediumTitle.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 30/04/24.
//

import SwiftUI

struct MediumTitle: View {
    
    // ========== Atributtes ==========
    private var text: String
    
    // ========== Body ==========
    var body: some View {
        Text(text)
            .font(.system(size: 32))
            .fontWeight(.bold)
            .foregroundStyle(Color(.white))
    }
    
    // ========== Constructors ==========
    init(_ text: String) {
        self.text = text
    }
    
}

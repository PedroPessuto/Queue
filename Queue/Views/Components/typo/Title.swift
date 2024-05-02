//
//  Title.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import SwiftUI

struct Title: View {
    
    // ========== Atributtes ==========
    private var text: String
    
    // ========== Body ==========
    var body: some View {
        Text(text.uppercased())
            .font(.system(size: 48))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundStyle(Color("oBrown"))
    }
    
    // ========== Constructors ==========
    init(_ text: String) {
        self.text = text
    }
    
}


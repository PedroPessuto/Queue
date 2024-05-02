//
//  Queue.swift
//  Queue
//
//  Created by Pedro Pessuto on 02/05/24.
//

import Foundation

@Observable class Queue {
    
    // ========== Atributtes ==========
    public var id: String = UUID().uuidString
    public var authorId: String = ""
    public var code: String = ""
    public var name: String = ""
    public var participants: [Person] = []
    
    // ========== Constructors ==========
    init(_ name: String, _ id: String) {
        self.name = name
        self.authorId = id
        
        // Generate code
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        self.code = String((0..<7).map{ _ in letters.randomElement()! })
    }
    
}

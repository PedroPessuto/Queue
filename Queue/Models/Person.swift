//
//  Person.swift
//  Queue
//
//  Created by Pedro Pessuto on 02/05/24.
//

import Foundation

class Person {
    
    // ========== Atributtes ==========
    public var id: String = UUID().uuidString
    public var name: String
    
    // ========== Constructors ==========
    init(name: String) {
        self.name = name
    }
    
}

//
//  Account.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 30/04/24.
//

import Foundation
import SwiftData

@Model
class Account {
    
    // ========== Atributtes ==========
    public var id: String = UUID().uuidString
    public var name: String
    public  var queueIds: [String] = []
    
    // ========== Constructors ==========
    init(name: String) {
        self.name = name
    }
    
}

//
//  AccountController.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import Foundation


@Observable class AccountController {
    
    // ========== Atributtes ==========
    public var account: Account? = nil
    
    // ========== Functions ==========
    public func createAccount(_ account: Account) {
        self.account = account
    }
}


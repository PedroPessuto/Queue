//
//  GenerealController.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import Foundation

@Observable class GeneralController {
    
    // ========== Atributtes ==========
    public var accountController: AccountController = AccountController()
    public var queues: [Queue] = []
    
    // ========== Functions ==========
    
    // TODO: Criar uma fila
    public func createQueue(_ name: String) {
    }
    
    // TODO: Sair de uma fila
    public func quitQueue(_ queue: Queue) {
    }
    
    // TODO: Entrar em uma fila
    public func joinQueue(_ id: String)  {
    }
    
    // TODO: Entrar na fila de espera
    public func participateQueue(_ queue: Queue) {
    }
    
    // TODO: Sair da fila de espera
    public func leaveQueue(_ queue: Queue) {
    }
    
    // TODO: Avançar para o próximo participante
    public func next(_ queue: Queue) {
    }
    
}

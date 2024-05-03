//
//  GenerealController.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import Foundation
import CloudKit

@Observable class GeneralController {
    
    // ========== Atributtes ==========
    private var cloudController: CloudController = CloudController()
    public var accountController: AccountController = AccountController()
    public var queues: [Queue] = []
    
    // ========== Functions ==========
    

    // TODO: Criar uma fila
    public func createQueue(_ name: String) async -> Queue? {
        if let account: Account = accountController.account {
            let queue: Queue = Queue(name, account.id)
            if let record: CKRecord = await cloudController.addQueue(queue) {
                if let newQueue: Queue = Queue(record) {
                    queues.append(newQueue)
                    return newQueue
                }
                
            }
            
        }
        return nil
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

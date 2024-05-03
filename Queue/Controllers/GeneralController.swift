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
    

    // MARK: Create a queue
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
    
    // MARK: Delete a queue
    public func quitQueue(_ queue: Queue) async {
        if let account: Account = accountController.account {
            if let recordId: CKRecord.ID = await cloudController.deleteQueue(queue) {
                queues.removeAll { queue in
                    queue.id == recordId.recordName
                }
            }
        }
    }
    
    // MARK: Read queues
    public func getQueues() async {
        if let _: Account = accountController.account {
            if let records: [CKRecord] = await cloudController.getQueues() {
                queues = records.compactMap({ record in
                    return Queue(record)
                })
            }
        }
    }
    
    public func changeQueueName(_ queue: Queue, _ newName: String)  async {
        if let _ = accountController.account {
            if let _: CKRecord = await cloudController.changeQueueName(queue, newName) {
                queue.name = newName
            }
        }
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

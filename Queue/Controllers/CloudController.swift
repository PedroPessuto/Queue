//
//  CloudController.swift
//  Queue
//
//  Created by Amanda Conde on 02/05/24.
//

import Foundation
import CloudKit

class CloudController {
    let database: CKDatabase = CKContainer.default().publicCloudDatabase
    
    public func addQueue(_ queue: Queue) async  -> CKRecord? {
        do {
            let record: CKRecord = try await database.save(queue.getRecord())
            return record
        }
        catch{
            return nil
        }
    }
    
}

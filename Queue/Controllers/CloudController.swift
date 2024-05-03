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
    
    public func deleteQueue(_ queue: Queue) async -> CKRecord.ID? {
        do {
            let recordId: CKRecord.ID = queue.getRecord().recordID
            let deleteRecordId: CKRecord.ID = try await database.deleteRecord(withID: recordId)
            return deleteRecordId
        }
        catch {
            return nil
        }
    }
    
    public func getQueues() async -> [CKRecord]? {
        do {
            let predicate: NSPredicate = NSPredicate(value: true)
            let query: CKQuery = CKQuery(recordType: RecordTypes.Queue.rawValue, predicate: predicate)
            let matchResult = try await database.records(matching: query)
//          matchResult type --> (matchResults: [(CKRecord.ID, Result<CKRecord, any Error>)], queryCursor: CKQueryOperation.Cursor?)
            let records: [CKRecord] = matchResult.matchResults.compactMap { try? $0.1.get() }
            return records
        }
        catch {
            return nil
        }
    }
    
    public func changeQueueName(_ queue: Queue, _ newName: String)  async -> CKRecord? {
        do {
            let recordId: CKRecord.ID = queue.getRecord().recordID
            let record = try await database.record(for: recordId)
            record.setValue(newName, forKey: QueueFields.name.rawValue)
            let newRecord = try await database.save(record)
            return newRecord
        }
        catch {
            return nil
        }
    }
    
}

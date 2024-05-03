//
//  Queue.swift
//  Queue
//
//  Created by Pedro Pessuto on 02/05/24.
//

import Foundation
import CloudKit

@Observable class Queue {
    
    // ========== Atributtes ==========
    public var id: String = UUID().uuidString
    public var authorId: String = ""
    public var code: String = ""
    public var name: String = ""
    public var peopleIds: [String] = []
    public var participants: [Person] = []
    
    // ========== Constructors ==========
    init(_ name: String, _ id: String) {
        self.name = name
        self.authorId = id
        
        // Generate code
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        self.code = String((0..<7).map{ _ in letters.randomElement()! })
        
    }
    
    init?(_ record: CKRecord) {
        guard
            let authorId: String = record[QueueFields.authorId.rawValue] as? String,
            let code: String = record[QueueFields.code.rawValue] as? String,
            let name: String = record[QueueFields.name.rawValue] as? String
        else {
            return nil
        }
        
        self.id = record.recordID.recordName
        self.authorId = authorId
        self.code = code
        self.name = name
        
        if let peopleIds: [String] = record[QueueFields.peopleIds.rawValue] as? [String] {
            self.peopleIds = peopleIds
        }
        
    }
    
    public func getRecord() -> CKRecord {
        let record: CKRecord = CKRecord(recordType: RecordTypes.Queue.rawValue, recordID: CKRecord.ID(recordName: self.id))
        record.setValue(self.authorId, forKey: QueueFields.authorId.rawValue)
        record.setValue(self.code, forKey: QueueFields.code.rawValue)
        record.setValue(self.name, forKey: QueueFields.name.rawValue)
        
        if (!self.peopleIds.isEmpty) {
            record.setValue(self.peopleIds, forKey: QueueFields.peopleIds.rawValue)
        }
        
        return record
    }
    
}

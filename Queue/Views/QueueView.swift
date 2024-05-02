//
//  QueueView.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import SwiftUI

struct QueueView: View {
    
    // ========== Variables ==========
    @Environment(\.dismiss) private var dismiss
    @Environment(GeneralController.self) private var controller
    public var queue: Queue
    
    // ========== Functions ==========
    
    private func participate() -> Void {
       
    }
    
    private func leave() -> Void {
        
    }
    
    private func quit() -> Void {
        
    }
    
    private func next() -> Void {
        
    }
    
    // ========== Body ==========
    var body: some View {
        
        VStack (alignment: .leading, spacing: 30) {
            
            VStack (alignment: .leading) {
                Title(queue.name)
                MediumTitle("Code: \(queue.code)")
                
                if (controller.accountController.account?.id == queue.authorId && !queue.participants.isEmpty) {
                    oButton("Next") {
                       next()
                    }
                }
                
            }
            
            VStack (alignment: .leading) {
                MediumTitle("Participants: ")
                
                VStack {
                    if (queue.participants.isEmpty) {
                        SubTitle("No one")
                        Spacer()
                    }
                    else {
                        ScrollView {
                            ForEach(queue.participants.indices, id:\.self) { index in
                                VStack {
                                    HStack {
                                        if (queue.participants.count > index) {
                                            
                                            if (queue.participants[index].id == controller.accountController.account?.name) {
                                                SubTitle("\(index + 1). \(queue.participants[index].name) (YOU)")
                                            }
                                            else {
                                                SubTitle("\(index + 1). \(queue.participants[index].name)")
                                            }
                                            
                                        }
                                        Spacer()
                                    }
                                }
                            }
                        }
                    }
                }
                .frame(minHeight: 200)
                
            }
            
            Spacer()
            
            let isOnQueue: Bool = queue.participants.contains(where: {
                $0.id == controller.accountController.account?.id
            })
            
            HStack {
                oButton(
                    isOnQueue ? "Leave" : "Participate"
                ) {
                    if (isOnQueue) {
                        leave()
                    }
                    else {
                        participate()
                    }
                    
                }
                
                Spacer()
                
                oButton("Quit") {
                    quit()
                }

            }
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color("oLightGreen"))
    }
}

//
//  JoinView.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import SwiftUI

struct JoinView: View {
    
    // ========== Variables ==========
    @Environment(\.dismiss) private var dismiss
    @Environment(GeneralController.self) private var controller
    @State private var token: String = ""
    
    @Binding public var showingAlert: Bool
    @Binding public var alertText: String
    
    // ========== Functions ==========
    
    private func join() -> Void {
        if (token.count > 0) {
            
        }
    }
    
    // ========== Body ==========
    var body: some View {
        
        VStack (alignment: .leading, spacing: 30) {
            
            Title("Enter A Code")
                        
            oInput("Enter the queue token", $token)
                .onSubmit {
                    join()
                }
            
            oButton("Join") {
                join()
            }
            
        }
        .padding(30)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(
            Color("oLightGreen")
        )
        
    }
}


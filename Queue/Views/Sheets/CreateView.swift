//
//  CreateView.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import SwiftUI

struct CreateView: View {
    
    // ========== Variables ==========
    @Environment(\.dismiss) private var dismiss
    @Environment(GeneralController.self) private var controller
    @State private var name: String = ""
    
    @Binding public var showingAlert: Bool
    @Binding public var alertText: String
    
    // ========== Functions ==========
    
    private func create() -> Void {
        if (name.count > 0) {
            
        }
        
    }
    
    // ========== Body ==========
    var body: some View {
        
        VStack (alignment: .leading, spacing: 30) {
            
            Title("Create A Queue")
                        
            oInput("Name", $name)
                .onSubmit {
                    create()
                }
            
            oButton("Create") {
                create()
                
            }
            
        }
        .padding(30)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(
            Color("oLightGreen")
        )
        
    }
}


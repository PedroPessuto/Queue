//
//  LoginView.swift
//  Queue
//
//  Created by Pedro Pessuto on 02/05/24.
//C

import SwiftUI

struct LoginView: View {
    
    // ========== Variables ==========
    @Environment(GeneralController.self) private var controller
    @State private var personName: String = ""
    
    // ========== Functions ==========
    
    private func createAccount() -> Void {
        if (personName.count > 0) {
//            controller.accountController.createAccount(personName)
        }
    }
    
    // ========== Body ==========
    var body: some View {
        
        VStack (alignment: .leading, spacing: 30) {
            
            BigTitle("kuwi")
                        
            oInput("Enter your name", $personName)
                .onSubmit {
                    createAccount()
                }
            
            oButton("Let's Go") {
                createAccount()
            }
            
        }
        .padding(30)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(
            Color("oLightGreen")
        )
        
    }
}


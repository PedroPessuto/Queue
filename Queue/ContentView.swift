//
//  ContentView.swift
//  Queue
//
//  Created by Pedro Pessuto on 02/05/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Query var account: [Account]
    @State var controller: GeneralController = GeneralController()
    
    private func setup(){
        if !account.isEmpty {
            controller.accountController.createAccount(account.first!)
        }
    }
    
    var body: some View {
        
        NavigationStack {
            
            if controller.accountController.account != nil {
                HomeView()
            }
            else {
                LoginView()
            }
        }
        .environment(controller)
        .onAppear {
            setup()
        }
        
        
    }
}

#Preview {
    ContentView()
}

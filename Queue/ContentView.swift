//
//  ContentView.swift
//  Queue
//
//  Created by Pedro Pessuto on 02/05/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var controller: GeneralController = GeneralController()
    
    var body: some View {
        
        NavigationStack {
            if (controller.accountController.account != nil) {
                HomeView()
            }
            else {
                LoginView()
            }
        }
        .environment(controller)
        
    }
}

#Preview {
    ContentView()
}

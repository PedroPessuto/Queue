//
//  HomeView.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    
    @Query var accounts: [Account]
    @Environment(\.modelContext) var context
    
    // ========== Variables ==========
    @Environment(GeneralController.self) private var controller
    @State private var isCreating: Bool = false
    @State private var isJoin: Bool = false
    
    @State private var showingAlert: Bool = false
    @State private var alertText: String = ""
    
    // ========== Body ==========
    var body: some View {
        
        VStack (alignment: .leading) {
            
            Title("Queues")
            
            ScrollView {
                ForEach(controller.queues, id: \.id) { queue in
                    NavigationLink(destination: QueueView(queue: queue)) {
                        oCard(queue: queue)
                    }
                }
            }
            
            Spacer()
            
            HStack {
                oButton("Join") {
                    isJoin.toggle()
                }
                
                Spacer()
                
                oButton("Create") {
                    isCreating.toggle()
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(30)
        .onAppear {
            Task {
                await controller.getQueues()
            }

        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background( Color("oYellow"))
        .sheet(isPresented: $isCreating) {
            CreateView(showingAlert: $showingAlert, alertText: $alertText)
        }
        .sheet(isPresented: $isJoin) {
            JoinView(showingAlert: $showingAlert, alertText: $alertText)
        }
        .alert(alertText, isPresented: $showingAlert) {
            Button("OK", role: .cancel) { alertText = "" }
        }
        .toolbar{
            ToolbarItem(placement: .confirmationAction){
                if let account = accounts.first {
                    NavigationLink(account.name ?? "aaa",
                                   destination: AccountView(account: account))
                }
            }
        }
        
        
    }
}

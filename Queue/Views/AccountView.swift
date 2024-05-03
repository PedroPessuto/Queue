//
//  AccountView.swift
//  Queue
//
//  Created by Gabriel Sabaini on 02/05/24.
//

import SwiftUI
import SwiftData

struct AccountView: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    @Environment(GeneralController.self) var controller: GeneralController
    
    @Bindable var account: Account
    @State var newName: String = ""
    
    var body: some View {
        VStack{
            Text(account.name ?? "aaa")
            TextField("Edit your name:", text: $newName)
            Button(action: {
                editModel()
                dismiss()
            }, label: {
                Text("Salvar mudança")
            })
            Button(action: {
                deleteModel()
                dismiss()
            }, label: {
                Text("Deletar conta")
            })
        }
    }
    func editModel(){
        account.name = newName
    }
    func deleteModel(){
        controller.accountController.account = nil
        context.delete(account)
        print(controller.accountController.account ?? "Náo ten conta")
        
    }
}

//#Preview {
//    AccountView()
//}

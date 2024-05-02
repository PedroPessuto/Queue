//
//  oCard.swift
//  CloudQueue
//
//  Created by Pedro Pessuto on 28/04/24.
//

import SwiftUI

struct oCard: View {
    
    var queue: Queue
    
    var body: some View {
       
        VStack {
            
            Text(queue.name)
                .font(.system(size: 30))
                .foregroundStyle(.white)
                .bold()

        }
        .frame(height: 100)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color("oLightGreen"))
        )
    }
}

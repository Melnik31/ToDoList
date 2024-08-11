//
//  TLButton.swift
//  ToDoList
//
//  Created by Mikhail Melnikau on 8/8/24.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(background))
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "Value",
             background: .pink){
        // Action
    }
        
}

//
//  RegisterView.swift
//  ToDoList
//
//  Created by Mikhail Melnikau on 8/6/24.
//

import SwiftUI

struct RegisterView: View {
    @State var viewModel = RegisterViewViewModel()
    
    var body: some View {
        HeaderView(title: "Register",
                   subtitle: "Orgonize your life",
                   angle: -15,
                   background: .yellow)
        Form{
            TextField("Full name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            
            TextField("Email address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
            
            SecureField("Password", text: $viewModel.password )
                .textFieldStyle(DefaultTextFieldStyle())
                .textInputAutocapitalization(.never)
            
            TLButton(title: "Create account",
                     background: .orange
            ){
                viewModel.register()
            }
        }
        .offset(y: -50)
        
        Spacer()
        
    }
}

#Preview {
    RegisterView()
}

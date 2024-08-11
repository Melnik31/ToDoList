//
//  LoginView.swift
//  ToDoList
//
//  Created by Mikhail Melnikau on 8/6/24.
//

import SwiftUI


struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List",
                           subtitle: "Do More",
                           angle: 15,
                           background: .cyan)
                .padding(.top, 20)
                
                
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color.red)
                    }
                    
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.never)
                    SecureField("Password", text: $viewModel.password )
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Log in",
                             background: .blue
                    )  {
                        viewModel.login()
                    }
                }
                .offset(y: -50 )
                
                //Creat Account
                
                VStack{
                    Text("New User?")
                        .padding(.bottom, 5)
                    
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}
#Preview {
    LoginView()
}


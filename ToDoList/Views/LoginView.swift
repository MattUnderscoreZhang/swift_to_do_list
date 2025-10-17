//
//  LoginView.swift
//  ToDoList
//
//  Created by Matt Zhang on 10/13/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        VStack {
            // header
            HeaderView(
                title: "To Do List",
                subtitle: "Get things done",
                angle: 15,
                background: .pink
            )
            // login form
            Form {
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled(true)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TDLButton(
                    title: "Log In",
                    color: .blue
                ) {
                    // attempt login
                }
            }
            // create account
            VStack {
                Text("New around here?")
                NavigationLink(
                    "Create An Account",
                    destination: RegisterView()
                )
            }
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    LoginView()
}

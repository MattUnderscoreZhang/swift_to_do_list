//
//  RegisterView.swift
//  ToDoList
//
//  Created by Matt Zhang on 10/13/25.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // header
            HeaderView(
                title: "Register",
                subtitle: "Start organizing todos",
                angle: -15,
                background: .orange
            )
            // registration form
            Form {
                TextField("Full Name", text:$name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled(true)
                TextField("Email Address", text:$email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled(true)
                SecureField("Password", text:$password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TDLButton(
                    title: "Create Account",
                    color: .green
                ) {
                    // attempt registration
                }
            }
        }
    }
}

#Preview {
    RegisterView()
}

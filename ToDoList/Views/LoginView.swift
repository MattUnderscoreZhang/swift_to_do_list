//
//  LoginView.swift
//  ToDoList
//
//  Created by Matt Zhang on 10/13/25.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack {
                // header
                HeaderView()
                // login
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        // attempt login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        }
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
}

#Preview {
    LoginView()
}

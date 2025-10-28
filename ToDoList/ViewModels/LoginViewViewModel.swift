//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Matt Zhang on 10/13/25.
//

import Foundation
import Supabase

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else { return }
        Task {
            try await supaclient.auth.signIn(email: email, password: password)
        }
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields."
            return false
        }
        guard email.contains( "@" ) && email.contains( "." ) else {
            errorMessage = "Invalid email format."
            return false
        }
        return true
    }
}

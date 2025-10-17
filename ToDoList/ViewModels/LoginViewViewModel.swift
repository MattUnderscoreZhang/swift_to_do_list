//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Matt Zhang on 10/13/25.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func login() {
    }
    
    func validate() -> Bool {
        return true
    }
}

//
//  LoginService.swift
//  VIP
//
//  Created by Filipe Rosa
//

import Foundation

protocol LoginService: class {
    func login(username: String, password:String, success: @escaping(String, String, String) -> (), fail: @escaping(_ message: String) -> ())
}

class LoginServiceImplementation: LoginService {
    func login(username: String, password: String, success: @escaping (String, String, String) -> (), fail: @escaping (String) -> ()) {
        
        if username.isEmpty, password.isEmpty {
            fail("login fail")
        } else {
            success("Ada", "Lovelace", "feminino")
        }
        
        
    }
}


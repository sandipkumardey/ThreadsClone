//
//  LoginViewModel.swift
//  Threads Clone
//
//  Created by Sandip Kumar Dey on 20/12/23.
//

import Foundation


class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}

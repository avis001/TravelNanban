//
//  AuthenticationViewModel.swift
//  TravelNanban
//
//  Created by Sivasankar on 26/2/25.
//

import SwiftUI

enum AuthPath {
    case signIn, signUp
}

@Observable
final class AuthenticationViewModel: ObservableObject {
    private(set) var authPath = AuthPath.signIn
    
    func updateAuthPath(_ path: AuthPath) {
        authPath = path
    }
}

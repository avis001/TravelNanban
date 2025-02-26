//
//  AuthenticationViewModel.swift
//  TravelNanban
//
//  Created by Sivasankar on 26/2/25.
//

import SwiftUI

enum AuthPath {
    case signIn, signUp
    
    var pathTitle: LocalizedStringKey {
        switch self {
        case .signIn:
            return "signIn"
        case .signUp:
            return "signUp"
        }
    }
    
    @ViewBuilder
    var clipShape: some Shape {
        UnevenRoundedRectangle(
            topLeadingRadius: self == .signIn ? 0 : 60,
            topTrailingRadius: self == .signUp ? 0 : 60
        )
    }
}

@Observable
final class AuthenticationViewModel: ObservableObject {
    private(set) var authPath = AuthPath.signIn
    
    func updateAuthPath(_ path: AuthPath) {
        authPath = path
    }
}

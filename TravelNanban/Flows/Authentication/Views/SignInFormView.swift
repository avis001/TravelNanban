//
//  SignInFormView.swift
//  TravelNanban
//
//  Created by Sivasankar on 25/2/25.
//

import SwiftUI
import DesignSystem

private enum SelectedField {
    case email, password
}

struct SignInFormView: View {
    @FocusState private var selectedField: SelectedField?
    @State private var emailText: String = ""
    @State private var passwordText: String = ""
    
    var body: some View {
        VStack (alignment: .center, spacing: 16) {
            Group {
                TextField(" \(Image(systemName: "envelope.fill")) \(String(localized: "email"))", text: $emailText)
                    .focused($selectedField, equals: SelectedField.email)
                SecureField(" \(Image(systemName: "lock.fill")) \(String(localized: "password"))", text: $passwordText)
                    .focused($selectedField, equals: SelectedField.password)
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: CornerRadius.level3)
                    .stroke(Color.secondary.opacity(0.1), lineWidth: 1)
                    .fill(Color.primary.opacity(0.04))
                    .allowsHitTesting(false)
            )
                        
            Button {
                //
            } label: {
                Text("signIn")
                    .padding()
                    .padding(.horizontal, Spacing.xl)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.primary)
            }
            .overlay(
                RoundedRectangle(cornerRadius: CornerRadius.level3)
                    .fill(Color.primary.opacity(0.2))
                    .allowsHitTesting(false)
            )
            
            AlternateSignInOptionsView()
                .padding(.top, Spacing.xl)
        }.padding(.horizontal, Spacing.large)
    }
}

#Preview {
    SignInFormView()
        .padding()
        .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude)
        .background(Color.bg)
}

//
//  SignUpFormView.swift
//  TravelNanban
//
//  Created by Sivasankar on 25/2/25.
//

import SwiftUI
import DesignSystem

private enum SelectedField {
    case fName, lName, email, password, confirmPassword
}

struct SignUpFormView: View {
    @FocusState private var selectedField: SelectedField?
    @State private var fNameText: String = .empty
    @State private var lNameText: String = .empty
    @State private var emailText: String = .empty
    @State private var passwordText: String = .empty
    @State private var confirmPasswordText: String = .empty
    
    var body: some View {
        VStack (alignment: .center, spacing: Spacing.medium) {
            Group {
                TextField(" \(Image(systemName: "person.fill")) \(String(localized: "fName"))", text: $fNameText)
                    .focused($selectedField, equals: SelectedField.fName)
                
                TextField(" \(Image(systemName: "person.fill")) \(String(localized: "lName"))", text: $lNameText)
                    .focused($selectedField, equals: SelectedField.lName)
                
                TextField(" \(Image(systemName: "envelope.fill")) \(String(localized: "email"))", text: $emailText)
                    .focused($selectedField, equals: SelectedField.email)
                
                SecureField(" \(Image(systemName: "lock.fill")) \(String(localized: "password"))", text: $passwordText)
                    .focused($selectedField, equals: SelectedField.password)
                
                SecureField(" \(Image(systemName: "lock.fill")) \(String(localized: "confirmPassword"))", text: $confirmPasswordText)
                    .focused($selectedField, equals: SelectedField.confirmPassword)
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
                Text("signUp")
                    .padding()
                    .padding(.horizontal, Spacing.xl)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.primary)
            }
            .overlay(
                RoundedRectangle(cornerRadius: CornerRadius.level3)
                    .fill(Color.secondary.opacity(0.2))
                    .allowsHitTesting(false)
            )
        }.padding(.horizontal, 24)
    }
}

#Preview {
    SignUpFormView()
        .padding()
        .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude)
        .background(Color.bg)

}

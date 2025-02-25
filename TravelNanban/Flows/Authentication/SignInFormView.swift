//
//  SignInFormView.swift
//  TravelNanban
//
//  Created by Sivasankar on 25/2/25.
//

import SwiftUI

private enum SelectedField {
    case email, password
}

struct SignInFormView: View {
    @FocusState private var selectedField: SelectedField?
    @State private var emailText: String = ""
    @State private var passwordText: String = ""
    @State private var textFieldSize: CGSize = .zero
    
    var body: some View {
        VStack (alignment: .center, spacing: 16) {
            Group {
                TextField("\(Image(systemName: "envelope.fill")) \(String(localized: "email"))", text: $emailText)
                    .focused($selectedField, equals: SelectedField.email)
                SecureField("\(Image(systemName: "lock.fill")) \(String(localized: "password"))", text: $passwordText)
                    .focused($selectedField, equals: SelectedField.password)
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.secondary, lineWidth: 1.25)
                    .shadow(color: .primary.opacity(0.3), radius: 5, x: 0, y: 0)
            )
                        
            Button {
                //
            } label: {
                Text("signIn")
                    .padding()
                    .padding(.horizontal, 36)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.primary)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.secondary, lineWidth: 1.25)
                    .fill(Color.secondary.opacity(0.2))
            )
            
            AlternateSignInOptionsView()
        }.padding(.horizontal, 24)
    }
}

#Preview {
    SignInFormView()
        .padding()
        .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude)
        .background(Color.bg)
}

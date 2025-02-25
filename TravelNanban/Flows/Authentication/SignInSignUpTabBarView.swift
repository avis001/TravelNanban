//
//  SignInSignUpTabBarView.swift
//  TravelNanban
//
//  Created by Sivasankar on 24/2/25.
//

import SwiftUI

private enum SelectedButton {
    case signIn, signUp
    
    func isDisabled(_ button: SelectedButton) -> Bool {
        if self == button {
            return true
        }
        else {
            return false
        }
    }
}

struct SignInSignUpTabBarView: View {
    @State private var selectedButton: SelectedButton = .signIn
    
    var body: some View {
        HStack(spacing: .zero) {
            Group {
                Button(action:  {
                    selectedButton = .signIn
                }, label: {
                    Text("signIn")
                        .frame(maxWidth: .greatestFiniteMagnitude, alignment: .center)
                        .frame(maxHeight: .greatestFiniteMagnitude, alignment: .center)
                })
                .disabled(
                    selectedButton.isDisabled(.signIn)
                )
                .background(
                    selectedButton == .signIn ? Color.clear : Color.secondary.opacity(0.15)
                )
                .scaleEffect(
                    selectedButton == .signIn ? 1.0 : 1.25
                )
                .clipShape(
                    UnevenRoundedRectangle(
                        topTrailingRadius: selectedButton == .signIn ? 0 : 60
                    )
                )
                .ignoresSafeArea()
                
                Button(action:  {
                    selectedButton = .signUp
                }, label: {
                    Text("signUp")
                        .frame(maxWidth: .greatestFiniteMagnitude, alignment: .center)
                        .frame(maxHeight: .greatestFiniteMagnitude, alignment: .center)
                })
                .disabled(
                    selectedButton.isDisabled(.signUp)
                )
                .background(
                    selectedButton == .signUp ? Color.clear : Color.secondary.opacity(0.15)
                )
                .scaleEffect(
                    selectedButton == .signUp ? 1.0 : 1.25
                )
                .clipShape(
                    UnevenRoundedRectangle(
                        topLeadingRadius: selectedButton == .signUp ? 0 : 60
                    )
                )
                .ignoresSafeArea()
            }
            .font(.title)
            .fontWeight(.medium)
            .padding(.top, 16)
            .foregroundStyle(
                Color.primaryText
            )
            .frame(height: 60)
        }
        .animation(.interpolatingSpring(duration: 0.1), value: selectedButton)
    }
}

#Preview {
    VStack {
        Spacer()
        SignInSignUpTabBarView()
    }
}

//
//  SignInSignUpTabBarView.swift
//  TravelNanban
//
//  Created by Sivasankar on 24/2/25.
//

import SwiftUI

struct SignInSignUpTabBarView: View {
    @Binding var viewModel: AuthenticationViewModel
    
    var body: some View {
        HStack(spacing: .zero) {
            Group {
                Button(action:  {
                    viewModel.updateAuthPath(.signIn)
                }, label: {
                    Text("signIn")
                        .frame(maxWidth: .greatestFiniteMagnitude, alignment: .center)
                        .frame(maxHeight: .greatestFiniteMagnitude, alignment: .center)
                })
                .disabled(
                    viewModel.authPath == .signIn
                )
                .background(
                    viewModel.authPath == .signIn ? Color.clear : Color.secondary.opacity(0.15)
                )
                .scaleEffect(
                    viewModel.authPath == .signIn ? 1.0 : 1.25
                )
                .clipShape(
                    UnevenRoundedRectangle(
                        topTrailingRadius: viewModel.authPath == .signIn ? 0 : 60
                    )
                )
                .ignoresSafeArea()
                
                Button(action:  {
                    viewModel.updateAuthPath(.signUp)
                }, label: {
                    Text("signUp")
                        .frame(maxWidth: .greatestFiniteMagnitude, alignment: .center)
                        .frame(maxHeight: .greatestFiniteMagnitude, alignment: .center)
                })
                .disabled(
                    viewModel.authPath == .signUp
                )
                .background(
                    viewModel.authPath == .signUp ? Color.clear : Color.secondary.opacity(0.15)
                )
                .scaleEffect(
                    viewModel.authPath == .signUp ? 1.0 : 1.25
                )
                .clipShape(
                    UnevenRoundedRectangle(
                        topLeadingRadius: viewModel.authPath == .signUp ? 0 : 60
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
        .animation(.interpolatingSpring(duration: 0.1), value: viewModel.authPath)
    }
}

#Preview {
    VStack {
        Spacer()
        SignInSignUpTabBarView(viewModel: .constant(AuthenticationViewModel()))
    }
}

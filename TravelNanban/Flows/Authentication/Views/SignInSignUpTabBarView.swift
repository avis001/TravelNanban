//
//  SignInSignUpTabBarView.swift
//  TravelNanban
//
//  Created by Sivasankar on 24/2/25.
//

import SwiftUI
import DesignSystem

struct SignInSignUpTabBarView: View {
    @Binding var viewModel: AuthenticationViewModel
    
    var body: some View {
        HStack(spacing: .zero) {
            Group {
                Button(action:  {
                    viewModel.updateAuthPath(.signIn)
                }, label: {
                    Text("signIn")
                        .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude, alignment: .center)
                })
                .disabled(
                    viewModel.authPath == .signIn
                )
                .background(
                    viewModel.authPath == .signIn ? Color.clear : Color.secondary.opacity(0.15)
                )
                .modifier(
                    AnimatableScaleEffect(
                        condition: viewModel.authPath == .signIn
                    )
                )
                .clipShape(
                    AuthPath.signIn.clipShape
                )
                
                Button(action:  {
                    viewModel.updateAuthPath(.signUp)
                }, label: {
                    Text("signUp")
                        .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude, alignment: .center)
                })
                .disabled(
                    viewModel.authPath == .signUp
                )
                .background(
                    viewModel.authPath == .signUp ? Color.clear : Color.secondary.opacity(0.15)
                )
                .modifier(
                    AnimatableScaleEffect(
                        condition: viewModel.authPath == .signUp
                    )
                )
                .clipShape(
                    AuthPath.signUp.clipShape
                )
            }
            .font(.title)
            .fontWeight(.medium)
            .padding(.top, Spacing.medium)
            .foregroundStyle(Color.primaryText)
            .ignoresSafeArea()
            .frame(height: 60)
        }
        .animation(.interpolatingSpring(duration: 0.1), value: viewModel.authPath)
    }
}

#Preview {
    VStack {
        Spacer()
        SignInSignUpTabBarView(viewModel: .constant(AuthenticationViewModel()))
    }.background(Color.bg)
}

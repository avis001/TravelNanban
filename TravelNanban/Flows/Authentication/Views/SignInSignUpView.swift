//
//  SignInSignUpView.swift
//  TravelNanban
//
//  Created by Sivasankar on 23/2/25.
//

import SwiftUI
import DesignSystem

struct SignInSignUpView: View {
    @State private var viewModel = AuthenticationViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            
            Group {
                if viewModel.authPath == .signIn {
                    SignInFormView()
                        .transition(.move(edge: .leading))
                }
                else if viewModel.authPath == .signUp {
                    SignUpFormView()
                        .transition(.move(edge: .trailing))
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            SignInSignUpTabBarView(viewModel: $viewModel)
                .padding(.top, Spacing.xl)
        }
        .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude, alignment: .center)
        .background(Color.bg)
        .animation(.default, value: viewModel.authPath)
    }
}

#Preview {
    SignInSignUpView()
}

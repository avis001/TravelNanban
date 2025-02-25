//
//  SignInSignUpView.swift
//  TravelNanban
//
//  Created by Sivasankar on 23/2/25.
//

import SwiftUI

struct SignInSignUpView: View {
    var body: some View {
        VStack {
            Spacer()
            
            SignInFormView()
                .padding(.horizontal)
            
            SignInSignUpTabBarView()
        }
        .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude, alignment: .center)
        .background(Color.bg)
    }
}

#Preview {
    SignInSignUpView()
}

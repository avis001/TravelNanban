//
//  AlternateSignInOptionsView.swift
//  TravelNanban
//
//  Created by Sivasankar on 25/2/25.
//

import SwiftUI
import DesignSystem

struct AlternateSignInOptionsView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                LineView()
                Text("orSignInUsing")
                    .fixedSize()
                LineView()
            }
            
            HStack {
                Group {
                    Button(action: {
                        //
                    }, label: {
                        ButtonLabel("\(Image(systemName: "apple.logo"))")
                    })
                    
                    Button(action: {
                        //
                    }, label: {
                        ButtonLabel("f")
                    })
                    
                    Button(action: {
                        //
                    }, label: {
                        ButtonLabel("G")
                    })
                }
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(Color.secondary)
                .background(Color.primary.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: CornerRadius.level1))
            }
        }
    }
}

#Preview {
    AlternateSignInOptionsView()
        .padding()
        .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude)
        .background(Color.bg)
}

// Pragma:- Private Support

private struct ButtonLabel: View {
    var text: LocalizedStringKey
    
    init(_ text: LocalizedStringKey) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .frame(width: 50, height: 50, alignment: .center)
            .padding(.horizontal)

    }
}

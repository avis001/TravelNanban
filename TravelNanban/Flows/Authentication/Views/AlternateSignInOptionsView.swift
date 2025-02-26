//
//  AlternateSignInOptionsView.swift
//  TravelNanban
//
//  Created by Sivasankar on 25/2/25.
//

import SwiftUI

struct AlternateSignInOptionsView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Rectangle()
                    .frame(height: 1)
                Text("orSignInUsing")
                    .fixedSize()
                Rectangle()
                    .frame(height: 1)
            }
            
            HStack {
                Group {
                    Button(action: {
                        //
                    }, label: {
                        Text("\(Image(systemName: "apple.logo"))")
                            .frame(width: 50, height: 50, alignment: .center)
                            .padding(.horizontal)
                    })
                    
                    Button(action: {
                        //
                    }, label: {
                        Text("f")
                            .frame(width: 50, height: 50)
                            .padding(.horizontal)
                    })
                    
                    Button(action: {
                        //
                    }, label: {
                        Text("G")
                            .frame(width: 50, height: 50)
                            .padding(.horizontal)
                    })
                }
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(Color.secondary)
                .background(Color.primary.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 8))
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

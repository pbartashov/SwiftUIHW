//
//  LoginView.swift
//  SwiftUIHW
//
//  Created by Павел Барташов on 25.10.2022.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""

    var body: some View {
        VStack(spacing: 120) {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)

            VStack(spacing: 16) {
                VStack(spacing: 0) {
                    TextField("Email or phone", text: $username)
                        .modifier(LoginTextField(corners: [.topLeft, .topRight]))

                    SecureField("Password", text: $password)
                        .modifier(LoginTextField(corners: [.bottomLeft, .bottomRight]))
                }

                Button {
                    print("Log in")
                } label: {
                    Text("Log in")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding()
                }
                .background(Color.brandBlue)
                .cornerRadius(10)
            }
        }
        .padding(16)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

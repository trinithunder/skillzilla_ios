//
//  LogIn.swift
//  SkillZilla_ios
//
//  Created by Marlon Henry on 2/14/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isLoginButtonActive: Bool = false
    
    var body: some View {
        ScrollView{
            VStack(spacing:20) {
                Spacer().frame(height:20)
                TextField("Email", text: $email)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    .padding(.horizontal)
                
                HStack {
                    if isPasswordVisible {
                        TextField("Password", text: $password)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    } else {
                        SecureField("Password", text: $password)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    }
                    Button(action: {
                        self.isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                            .padding(.trailing)
                    }
                }
                .padding(.horizontal)
                
                HStack {
                    Button("Forgot Password?") {
                        // Handle forgot password action
                    }
                    Spacer()
                }
                .padding(.horizontal)
                
                Button(action: {
                    // Handle login action
                }) {
                    Text("Login")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10)
                                        .fill(isLoginButtonActive ? Color.blue : Color.blue.opacity(0.5)))
                }
                .padding(.horizontal)
                .disabled(!isLoginButtonActive)
                
                Spacer()
                
                HStack {
                    Text("No account? ")
                    Button("Create one") {
                        // Handle navigation to create account page
                    }
                }
                .padding(.bottom)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

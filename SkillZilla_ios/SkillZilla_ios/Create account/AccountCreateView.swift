//
//  AccountCreateView.swift
//  SkillZilla_ios
//
//  Created by Marlon Henry on 2/14/24.
//

import SwiftUI

struct AccountCreateView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isLoginButtonActive: Bool = false
    
    var body: some View {
        ScrollView{
            VStack(spacing:20) {
                Spacer().frame(height:20)
                TextField("Name", text: $name)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    .padding(.horizontal)
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
                Text("By creating an account, you agree to SkillZilla")
                HStack {
                    Button("Terms and Conditions") {
                        // Handle forgot password action
                    }
                    Text("and")
                    Button("Privacy Policy") {
                        // Handle forgot password action
                    }
                    Spacer()
                }
                .padding(.horizontal)
                
                Button(action: {
                    // Handle login action
                }) {
                    Text("Create account")
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
                }.opacity(0.0)
                .padding(.bottom)
            }
        }
    }
}

struct AccountCreateView_Previews: PreviewProvider {
    static var previews: some View {
        AccountCreateView()
    }
}

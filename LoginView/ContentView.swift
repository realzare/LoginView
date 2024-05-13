//
//  ContentView.swift
//  LoginView
//
//  Created by Hossein Zare on 5/13/24.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
        LinearGradient(gradient: Gradient(colors: [Color.purple, .blue,]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
            .ignoresSafeArea()
            
            VStack {
                Text("Welcom")
                    .padding()
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .bold()
                Spacer()
                
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .bold()
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .bold()
                    .padding()
                    
                Button {
                } label: {
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 100, height: 40)
                        .overlay(Text("Log In"))
                        .foregroundStyle(.gray)
                        .bold()
                        .padding()
                }
                Spacer()
                
                Button {
                } label: {
                    Text("Forget Password?")
                        .foregroundStyle(.white)
                        .padding()
                }
            }
        }
    }
}
#Preview {
    ContentView()
}



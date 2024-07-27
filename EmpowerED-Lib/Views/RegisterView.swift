//
//  RegisterView.swift
//  EmpowerED-Lib
//
//  Created by Willie Bless Daniels on 22/07/2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.blue)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("BeCreative")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .bold()
                
                Text("Explore your creative side")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
        
        Spacer()
        
        Form {
            TextField("Full Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            
            TextField("Email Address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .autocorrectionDisabled()
            
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            Button {
                viewModel.register()
                // Attempt registration
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                    
                    Text("Creat Account")
                        .foregroundColor(.white)
                        .bold()
                }
            }
            .padding()
        }
        .offset(y: -50)
        
        Spacer()
        
    }
}

#Preview {
    RegisterView()
}

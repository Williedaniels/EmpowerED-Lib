//
//  WelcomeView.swift
//  EmpowerED-Lib
//
//  Created by Willie Bless Daniels on 23/07/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            VStack {
                Spacer()
                Text("Welcome!")
                    .font(.largeTitle)
                    .bold()
                Text("Ready To Be Empowered?")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                    .frame(height: 10.0)
                
                Spacer()
                
                Image("Join")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                Spacer()
                
            }
        }
        
        // Create account
        Button {
            // Attempt log in
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 100)
                    .frame(width: 300.0, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                
                NavigationLink("Create An Account", destination: RegisterView())
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}

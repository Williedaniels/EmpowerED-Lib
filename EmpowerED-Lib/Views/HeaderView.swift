//
//  HeaderView.swift
//  EmpowerED-Lib
//
//  Created by Willie Bless Daniels on 23/07/2024.
//

import SwiftUI

struct HeaderView: View {
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
                
                Text("Explore your creative side.")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}


#Preview {
    HeaderView()
}

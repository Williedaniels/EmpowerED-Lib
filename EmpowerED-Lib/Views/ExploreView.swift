//
//  ExploreView.swift
//  EmpowerED-Lib
//
//  Created by Willie Bless Daniels on 23/07/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                VStack(spacing: 10) {
                    Text("Seeking inspiration for your mind?")
                        .font(.title3)
                        .bold()
                    Text("Discover activities tailored to your interests")
                        .font(.subheadline)
                    Button(action: {
                        // Action for the Explore now button
                    }) {
                        Text("Explore now")
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding()
                    }
                }
                .padding()
            }
            
            
            VStack(spacing: 10) {
                HStack(spacing: 10) {
                    ActivityButton(imageName: "paintbrush", title: "Artistic", subtitle: "Unlock your")
                    ActivityButton(imageName: "person", title: "Global Citizenship", subtitle: "Engage with the")
                }
                HStack(spacing: 10) {
                    ActivityButton(imageName: "calculator", title: "Mathematics Mastery", subtitle: "Enhance your")
                    ActivityButton(imageName: "book", title: "Literary", subtitle: "Explore the world")
                }
                HStack(spacing: 10) {
                    ActivityButton(imageName: "microscope", title: "Scientific Inquiry", subtitle: "Explore the")
                    ActivityButton(imageName: "hands.sparkles", title: "Community Service", subtitle: "Make a difference in")
                }
            }
            .padding()
            
        }
    }
}

struct ActivityButton: View {
    var imageName: String
    var title: String
    var subtitle: String
    
    var body: some View {
        Button(action: {
            // Action for each activity button
        }) {
                    ZStack {
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .clipped()
                        
                        Color.white
                            .opacity(0.7)
                            .blur(radius: 10)
                        
                        VStack {
                            Text(title)
                                .font(.title2)
                                .foregroundColor(.black)
                                .bold()
                            Text(subtitle)
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                        .padding()
                    }
                    .frame(width: 150, height: 150)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
            }
        }


#Preview {
    ExploreView()
}

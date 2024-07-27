//
//  HomeView.swift
//  EmpowerED-Lib
//
//  Created by Willie Bless Daniels on 22/07/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        @StateObject var viewModel = HomeViewViewModel()
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    // Top Section
                    
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Explore extracurricular activities")
                            .font(.headline)
                        Text("Track your progress and achievements")
                            .font(.subheadline)
                        ProgressView(value: 0.5)
                            .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding([.horizontal, .top])
                    
                    // Search Bar
                    HStack {
                        TextField("Search activities", text: .constant(""))
                            .padding(.leading, 8)
                        Button(action: {
                            // Filter action
                        }) {
                            Image(systemName: "line.horizontal.3.decrease.circle.fill")
                                .foregroundColor(.black)
                        }
                        .padding(.trailing, 8)
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                    // Most Engaging Activities
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Text("Most engaging activities")
                                .font(.headline)
                            Spacer()
                            Button(action: {
                                // Previous action
                            }) {
                                Image(systemName: "chevron.left")
                            }
                            Button(action: {
                                // Next action
                            }) {
                                Image(systemName: "chevron.right")
                            }
                        }
                        .padding(.horizontal)
                        
                        // Activity Card
                        HStack {
                            Image("typewriter") // Placeholder image name
                                .resizable()
                                .frame(width: 150, height: 150)
                                .cornerRadius(10)
                            VStack(alignment: .leading, spacing: 4) {
                                HStack {
                                    Button("Join") {
                                        // Join action
                                    }
                                    .padding(8)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                                    Spacer()
                                    HStack {
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.yellow)
                                        Text("4.9")
                                            .font(.subheadline)
                                    }
                                }
                                Text("Debate Club for beginners")
                                    .font(.headline)
                                Text("Aria Nova")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    }
                    
                    // Model United Nations simulation
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Text("Model United Nations simulation")
                                .font(.headline)
                            Spacer()
                            Button(action: {
                                // Previous action
                            }) {
                                Image(systemName: "chevron.left")
                            }
                            Button(action: {
                                // Next action
                            }) {
                                Image(systemName: "chevron.right")
                            }
                        }
                        .padding(.horizontal)
                        
                        // Activity Cards
                        HStack(spacing: 16) {
                            ActivityCard(imageName: "mun", title: "Entrepreneurship", subtitle: "Ella Skyler", rating: "4.9")
                            ActivityCard(imageName: "math", title: "Mathematics", subtitle: "Alexis Reed", rating: "4.9")
                        }
                        .padding(.horizontal)
                    }
                    
                    // English literature club
                    VStack(alignment: .leading, spacing: 8) {
                        Text("English literature club")
                            .font(.headline)
                            .padding(.horizontal)
                        
                        // Icons Row
                        HStack {
                            ClubIcon(name: "Science")
                            ClubIcon(name: "Creative")
                            ClubIcon(name: "Public")
                            ClubIcon(name: "Artistic")
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom, 16)
            }
        }
    }

    struct ActivityCard: View {
        let imageName: String
        let title: String
        let subtitle: String
        let rating: String
        
        var body: some View {
            VStack(alignment: .leading, spacing: 4) {
                Image(imageName)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                HStack {
                    Text(title)
                        .font(.headline)
                    Spacer()
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text(rating)
                            .font(.subheadline)
                    }
                }
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
        }
    }

    struct ClubIcon: View {
        let name: String
        
        var body: some View {
            VStack {
                Image(systemName: "book.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.black)
                Text(name)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .bold()
            }
            .frame(maxWidth: .infinity)
        }
    }

#Preview {
    HomeView()
}

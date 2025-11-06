//
//  HomeView.swift
//  Portifolio_Luan
//
//  Created by Luan Damato on 06/11/25.
//

import SwiftUI

// MARK: - Home View
struct HomeView: View {
    let skills = [
        "Swift", "SwiftUI", "Objective-C", "UIKit", "Kotlin", "Java",
        "MVVM", "VIP", "Clean Architecture", "MVC",
        "RESTful APIs", "Unit Testing", "CI/CD", "Agile", "Git"
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image("profile") // add your profile image to Assets.xcassets
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                Text("Luan Rocha D’amato")
                    .font(.title)
                    .bold()
                Text("Senior iOS Developer\nSão Paulo, Brazil")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("About Me")
                        .font(.headline)
                    Text("""
Senior iOS Developer with 7+ years of experience, including 2 years as a FullStack developer and 5 years focused on native iOS development. Specialized in Swift, SwiftUI, and modern architectures like MVC, MVVM, VIP, and Clean Architecture.
""")
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Skills")
                        .font(.headline)
                    WrapView(data: skills) { skill in
                        Text(skill)
                            .padding(8)
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(8)
                    }
                }
                .padding(.horizontal)
                
                ExperienceSection()
                
                EducationSection()
                
                HStack {
                    Button(action: {
                        if let url = URL(string: "https://www.linkedin.com/in/luan-damato/") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("LinkedIn")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Button(action: {}) {
                        Text("Portfolio")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
    }
}

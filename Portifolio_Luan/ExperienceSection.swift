//
//  ExperienceSection.swift
//  Portifolio_Luan
//
//  Created by Luan Damato on 06/11/25.
//

import SwiftUI

struct ExperienceSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Professional Experience")
                .font(.headline)
            Group {
                ExperienceItem(
                    company: "ZUP IT Innovation",
                    role: "Mobile Software Engineer",
                    period: "May 2024 – Present",
                    details: [
                        "Developing and maintaining native iOS applications with a focus on security and scalability.",
                        "Implementing unit tests and automation for code quality.",
                        "Working with SwiftUI and modern UI design for Itaú project."
                    ]
                )
                ExperienceItem(
                    company: "Banco PAN",
                    role: "iOS Software Engineer",
                    period: "Feb 2023 – May 2024",
                    details: [
                        "Developed new features using Swift and RESTful APIs.",
                        "Optimized and maintained existing code.",
                        "Collaborated with cross-functional teams to enhance UX."
                    ]
                )
                ExperienceItem(
                    company: "Trigg Tecnologia",
                    role: "iOS Mobile Developer",
                    period: "Feb 2021 – Feb 2023",
                    details: [
                        "Designed and maintained iOS apps with API integration.",
                        "Worked closely with designers and PMs to align expectations.",
                        "Refactored Objective-C codebases to Swift."
                    ]
                )
                ExperienceItem(
                    company: "Wsquare Tecnologia",
                    role: "FullStack Developer",
                    period: "Aug 2019 – Feb 2021",
                    details: [
                        "Developed native apps for iOS and Android.",
                        "Created web pages and back-end with C# and Entity Framework.",
                        "Integrated RESTful services and relational databases."
                    ]
                )
            }
        }
        .padding(.horizontal)
    }
}

struct ExperienceItem: View {
    let company: String
    let role: String
    let period: String
    let details: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("\(company) – \(role)")
                .font(.subheadline).bold()
            Text(period)
                .font(.caption)
                .foregroundColor(.secondary)
            ForEach(details, id: \.self) { detail in
                Text("• \(detail)")
                    .font(.caption)
            }
        }
    }
}

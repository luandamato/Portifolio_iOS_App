//
//  ProjectsView.swift
//  Portifolio_Luan
//
//  Created by Luan Damato on 06/11/25.
//

import SwiftUI

struct ProjectsView: View {
    let projects = [
        Project(
            title: "Recipe App",
            description: "A mobile app to discover and share cooking recipes.",
            imageName: "recipe",
            technologies: ["SwiftUI", "Firebase", "REST API"],
            externalLink: "https://github.com/luandamato"
        ),
        Project(
            title: "E-commerce Platform",
            description: "A platform for users to buy and sell products.",
            imageName: "ecommerce",
            technologies: ["React", "Node.js", "MongoDB"],
            externalLink: "https://github.com/luandamato"
        ),
        Project(
            title: "Fitness Tracker",
            description: "App to monitor and improve physical performance.",
            imageName: "fitness",
            technologies: ["Swift", "CoreData"],
            externalLink: "https://github.com/luandamato"
        ),
        Project(
            title: "Travel Planner",
            description: "App for planning and sharing travel itineraries.",
            imageName: "travel",
            technologies: ["Kotlin", "Firebase"],
            externalLink: "https://github.com/luandamato"
        )
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)]) {
                    ForEach(projects) { project in
                        NavigationLink(destination: ProjectDetailView(project: project)) {
                            VStack(alignment: .leading) {
                                Image(project.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 120)
                                    .clipped()
                                    .cornerRadius(10)
                                Text(project.title)
                                    .font(.headline)
                                Text(project.description)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .padding()
                            .background(Color(UIColor.secondarySystemBackground))
                            .cornerRadius(15)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Projects")
        }
    }
}

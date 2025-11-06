//
//  ProjectDetailView.swift
//  Portifolio_Luan
//
//  Created by Luan Damato on 06/11/25.
//

import SwiftUI

struct ProjectDetailView: View {
    let project: Project
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image(project.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                
                Text(project.title)
                    .font(.title2)
                    .bold()
                
                Text(project.description)
                
                Text("Technologies")
                    .font(.headline)
                
                WrapView(data: project.technologies) { tech in
                    Text(tech)
                        .padding(8)
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(8)
                }
                
                Button(action: {
                    if let url = URL(string: project.externalLink) {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("View Project")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationTitle("Project Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

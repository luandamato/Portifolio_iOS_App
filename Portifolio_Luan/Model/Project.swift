//
//  Project.swift
//  Portifolio_Luan
//
//  Created by Luan Damato on 06/11/25.
//

import Foundation

struct Project: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let imageName: String
    let technologies: [String]
    let externalLink: String
}

//
//  ContentView.swift
//  Portifolio_Luan
//
//  Created by Luan Damato on 06/11/25.
//
import SwiftUI

// MARK: - ContentView (Tabs)
struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "person.fill")
                }
            ProjectsView()
                .tabItem {
                    Label("Projects", systemImage: "briefcase.fill")
                }
        }
    }
}


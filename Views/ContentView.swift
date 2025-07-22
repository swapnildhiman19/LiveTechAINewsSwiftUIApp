//
//  ContentView.swift
//  TechAINews
//
//  Created by Swapnil Dhiman on 18/07/25.
//

import SwiftUI
import WebKit  // Needed for WKWebView

struct ContentView: View {
    @StateObject private var manager = NewsManager()

    init() {
        configureNavigationBar()
    }

    var body: some View {
        NavigationView {
            List(manager.articles) { article in
                // Make the row tappable only if url exists
                if let urlString = article.url {
                    NavigationLink(destination: DetailsView(url: article.url)) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(article.title ?? "No title")
                                .font(.headline)
                            Text(urlString)
                                .font(.caption)
                                .foregroundColor(.blue)
                        }
                    }
                } else {
                    // Non-tappable if no URL
                    VStack(alignment: .leading, spacing: 4) {
                        Text(article.title ?? "No title")
                            .font(.headline)
                        Text("No URL available")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationBarTitle("Tech AI News")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                configureNavigationBar()
                manager.fetchNews()
            }
        }
    }
//    var body: some View{
//        ExampleListView()
//    }

    private func configureNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor.systemTeal
        ]
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}



#Preview {
    ContentView()
}

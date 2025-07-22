//
//  DetailsView.swift
//  TechAINews
//
//  Created by Swapnil Dhiman on 22/07/25.
//

import SwiftUI

struct DetailsView: View {
    var url: String? = nil // Placeholder for URL, can be passed when initializing

    var body: some View {
        WebView(url: url)            
    }
}

//#Preview {
//    DetailsView(url: "https://www.example.com") // Example URL, replace with actual URL
//}

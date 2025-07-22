//
//  WebView.swift
//  TechAINews
//
//  Created by Swapnil Dhiman on 22/07/25.
//
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let urlString = url, let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        } else {
            // Handle the case where the URL is nil or invalid
            uiView.loadHTMLString("<h1>Invalid URL</h1>", baseURL: nil)
        }
    }

    typealias UIViewType = WKWebView
}

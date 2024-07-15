//
//  SafariView2.swift
//  Apple-Framework
//
//  Created by Aldrei Glenn Nuqui on 6/2/24.
//

import SwiftUI
import WebKit

struct SafariView2: UIViewRepresentable {
    
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
    
}

#Preview() {
    SafariView2(urlString: "https://www.apple.com")
}


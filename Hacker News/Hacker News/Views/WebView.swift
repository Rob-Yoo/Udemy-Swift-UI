//
//  WebView.swift
//  Hacker News
//
//  Created by Jinyoung Yoo on 2023/09/21.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let req = URLRequest(url: url)
                uiView.load(req)
            }
        }
    }
}

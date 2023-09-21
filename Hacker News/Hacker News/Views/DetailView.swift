//
//  DetailView.swift
//  Hacker News
//
//  Created by Jinyoung Yoo on 2023/09/21.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

//
//  ContentView.swift
//  Hacker News
//
//  Created by Jinyoung Yoo on 2023/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkMangager()
    
    var body: some View {
        NavigationStack {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear(perform: {
            networkManager.fetchData(url: "https://hn.algolia.com/api/v1/search?query=foo&tags=story")
        })
    }
}

#Preview {
    ContentView()
}

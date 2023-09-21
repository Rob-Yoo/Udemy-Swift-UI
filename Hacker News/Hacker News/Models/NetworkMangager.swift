//
//  NetworkMangager.swift
//  Hacker News
//
//  Created by Jinyoung Yoo on 2023/09/21.
//

import Foundation

class NetworkMangager: ObservableObject {
    
    @Published var posts: [Post] = []
    
    func fetchData(url resource: String) {
        if let url = URL(string: resource) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, res, err in
                if err == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                           let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}

//
//  PostData.swift
//  Hacker News
//
//  Created by Jinyoung Yoo on 2023/09/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

// SwiftUI에서 List나 Grid 같이 뷰들을 반복적으로 렌더링해야 할 때
// Identifiable 프로토콜을 준수하는 타입이 들어와야 한다.
struct Post: Decodable, Identifiable {
    var id: String { objectID }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

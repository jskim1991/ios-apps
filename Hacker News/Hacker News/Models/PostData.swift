//
//  PostData.swift
//  Hacker News
//
//  Created by Jaesik Kim on 2022/07/13.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    let objectID: String
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
}

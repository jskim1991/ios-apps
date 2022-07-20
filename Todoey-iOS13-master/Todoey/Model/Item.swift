//
//  Item.swift
//  Todoey
//
//  Created by Jaesik Kim on 2022/07/20.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

class Item : Codable {
    
    let title: String
    var done: Bool
    
    init(_ title: String) {
        self.title = title
        self.done = false
    }
}

//
//  Pokedex.swift
//  Pokedex
//
//  Created by Gabriel Borges on 22/11/17.
//  Copyright © 2017 Gabriel Borges. All rights reserved.
//

import UIKit

class Pokedex {
    let count: Int
    let next: String
    let previous: String
    let results: Int
    
    init(json: [String: Any]) {
        count = json["count"] as? Int ?? 0
        next = json["next"] as? String ?? ""
        previous = json["previous"] as? String ?? ""
        results = json["results"] as? Int ?? 0
    }
}

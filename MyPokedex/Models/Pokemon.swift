//
//  Pokemon.swift
//  Pokedex
//
//  Created by Gabriel Borges on 22/11/17.
//  Copyright © 2017 Gabriel Borges. All rights reserved.
//

import UIKit

class Pokemon {
    var id: Int
    var name: String
    var urlImage: String
    
    init(json: [String: Any]) {
        id = json["id"] as? Int ?? 0
        name = json["name"] as? String ?? ""
        urlImage = json["urlImage"] as? String ?? ""
    }
}


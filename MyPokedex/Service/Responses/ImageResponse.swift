//
//  ImageResponse.swift
//  Pokedex
//
//  Created by Gabriel Borges on 22/11/17.
//  Copyright © 2017 Gabriel Borges. All rights reserved.
//

import Foundation

enum ImageResponse {
    case success(model: Data)
    case failure(description: ServerError)
    case timeOut(description: ServerError)
    case noConnection(description: ServerError)
}

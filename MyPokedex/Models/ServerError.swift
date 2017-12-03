//
//  ServerError.swift
//  Pokedex
//
//  Created by Gabriel Borges on 22/11/17.
//  Copyright © 2017 Gabriel Borges. All rights reserved.
//

import UIKit

class ServerError {
    var msgError: String
    var statusCode: Int
    
    init(message: String, code: Int) {
        msgError = message
        statusCode = code
    }
}

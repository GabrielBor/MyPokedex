//
//  Service.swift
//  MyPokedex
//
//  Created by Gabriel Borges on 27/11/17.
//  Copyright © 2017 Gabriel Borges. All rights reserved.
//

import UIKit

class Service: NSObject {
    
    class func getAllPokemons(url: String, completion:@escaping (_ response: PokemonResponse) -> Void) {
        guard let urlRequest = URL(string: url) else { return }
        let taskRequestPokemon = URLSession.shared.dataTask(with: urlRequest) { (data, response, err) in
            guard let data = data else { return }
            guard let httpStatus = response as? HTTPURLResponse else { return }
            
            switch httpStatus.statusCode {
            case 200:
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    completion(.success(model: json!))
                } catch let jsonError {
                    print("Error serialization JSON: \(jsonError)")
                }
                break
            case 400, 404:
                let error = ServerError(message: (response?.description)!, code: httpStatus.statusCode)
                completion(.failure(description: error))
                break
            default:
                break
            }
            
        }
        taskRequestPokemon.resume()
    }
    
}

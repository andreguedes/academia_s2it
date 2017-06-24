//
//  MovieRoute.swift
//  SKY
//
//  Created by Andre Guedes on 24/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation

enum MovieRouter {
    
    case allMovies()
    
    var path: String {
        switch self {
        case .allMovies():
            return API.movies
        }
    }
    
    func asURLRequest() throws -> URL? {
        guard let url = URL(string: API.baseURL) else {
            return nil
        }
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        switch self {
        case .allMovies():
            return urlRequest.url
        }
    }
    
}

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
            return ""
        }
    }
    
}

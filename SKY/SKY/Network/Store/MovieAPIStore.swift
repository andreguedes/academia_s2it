//
//  MovieAPIStore.swift
//  SKY
//
//  Created by Andre Guedes on 24/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class MovieAPIStore: GenericAPIStore, MovieStore {
    
    func getAllMovies(completion: @escaping ([Movie]?, NSError?) -> Void) {
        do {
            let urlRequest = try MovieRouter.allMovies().asURLRequest()
            
            if let url = urlRequest {
                Alamofire.request(url, method: .get).responseJSON(completionHandler: { (response) in
                    guard let responseLoad = response.response else {
                        return
                    }
                    
                    switch responseLoad.statusCode {
                    case 200:
                        guard let json = response.result.value as? [[String: Any]] else {
                            completion(nil, self.error)
                            return
                        }
                        let movies = Mapper<Movie>().mapArray(JSONArray: json)
                        completion(movies, nil)
                        break
                    default:
                        completion(nil, response.error as NSError?)
                        break
                    }
                })
            }
        } catch let error as NSError {
            completion(nil, error)
        }
    }
    
}

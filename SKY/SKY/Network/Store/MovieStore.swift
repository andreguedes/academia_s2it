//
//  MovieStore.swift
//  SKY
//
//  Created by Andre Guedes on 24/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation

protocol MovieStore: GenericStore {
    func getAllMovies(completion: @escaping completion<[Movie]?>)
}

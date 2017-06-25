//
//  MovieDataProvider.swift
//  SKY
//
//  Created by Andre Guedes on 25/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation

protocol MovieDataProviderProtocol: GenericDataProvider {
    
}

class MovieDataProvider: DataProviderManager<MovieDataProviderProtocol, MovieViewModel> {
    
    func getAllMovies() {
        MovieAPIStore().getAllMovies { (movies, error) in
            if error == nil {
                if let moviesLoad = movies {
                    self.viewModel = MovieViewModel(movies: moviesLoad)
                    if let vm = self.viewModel {
                        self.delegate?.success(viewModel: vm)
                    }
                }
            } else {
                self.delegate?.failed(self.delegate, error: error!)
            }
        }
    }
    
}

//
//  CineViewModel.swift
//  SKY
//
//  Created by Andre Guedes on 24/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import AlamofireImage

class CineViewModel {
    
    private var movieList: [Movie]?
    private var currentMovie: Movie?
    private var _coverImage: UIImage?
    private var _arrayCacheImage: [AutoPurgingImageCache?]?
    
    init(movies: [Movie]) {
        self.movieList = movies
        self._arrayCacheImage = []
    }
    
    var countOfMovies: Int? {
        return self.movieList?.count
    }
    var overview: String? {
        return self.currentMovie?.overview
    }
    var id: String? {
        return self.currentMovie?.id
    }
    var coverImage: UIImage? {
        return self.coverImage
    }
    var title: String? {
        return self.currentMovie?.title
    }
    var backdropsUrl: [String]? {
        return self.currentMovie?.backdropsUrl
    }
    var releaseYear: String? {
        return self.currentMovie?.releaseYear
    }
    var duration: String? {
        return self.currentMovie?.duration
    }
    
    func setupCurrentMovie(index: Int) {
        self.currentMovie = self.movieList?[index]
    }
    
}

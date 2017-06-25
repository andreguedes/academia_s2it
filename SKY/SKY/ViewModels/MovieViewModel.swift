//
//  MovieViewModel.swift
//  SKY
//
//  Created by Andre Guedes on 24/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import AlamofireImage

class MovieViewModel {
    
    typealias completion <T> = (_ result: T, _ failure: NSError?) -> Void
    private var movieList: [Movie]?
    private var currentMovie: Movie?
    private var _coverImage: UIImage?
    private var _arrayCacheImage: [AutoPurgingImageCache?]?
    
    init(movies: [Movie]) {
        self.movieList = movies
        self._arrayCacheImage = []
    }
    
    func downloadImage(completion: @escaping completion<UIImage>) {
        guard let _id = self.id else {
            return
        }
        let _url = URL(string: self.currentMovie?.coverUrl ?? "")
        
        for cacheImageLoad in self._arrayCacheImage! {
            if let _cacheImageLoad = cacheImageLoad?.image(withIdentifier: _id) {
                print("=========CACHE")
                
                completion(_cacheImageLoad, nil)
                return
            }
        }
        
        Alamofire.request(_url!).responseImage {
            (response) in
            if let image = response.result.value {
                let cacheImage = AutoPurgingImageCache()
                cacheImage.add(image, withIdentifier: _id)
                
                self._arrayCacheImage?.append(cacheImage)
                print("=========BAIXOU")
                
                completion(image, nil)
            }
        }
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

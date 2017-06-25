//
//  HomeSKYViewControllerExtension.swift
//  SKY
//
//  Created by Andre Guedes on 25/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation
import UIKit

extension HomeSKYViewController: MovieDataProviderProtocol {
    
    func success(viewModel: Any) {
        print("======CARREGOU O VM")
        print(viewModel)
        
        self.viewModel = viewModel as? MovieViewModel
        self.moviesCollection.reloadData()
    }
    
    func failed(_ provider: GenericDataProvider?, error: NSError) {
        print("======ERROR")
        print(error)
    }
    
}

extension HomeSKYViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let count = self.viewModel?.countOfMovies else {
            return 0
        }
        return count
        //return self.viewModel?.countOfMovies ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let _cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as? MovieCollectionViewCell
        self.viewModel?.setupCurrentMovie(index: indexPath.row)
        _cell?.setupCell(vm: self.viewModel)
        return _cell ?? MovieCollectionViewCell()
    }
    
}

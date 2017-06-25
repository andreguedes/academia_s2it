//
//  MovieCollectionViewCell.swift
//  SKY
//
//  Created by Andre Guedes on 25/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var titleMovie: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(vm: MovieViewModel?) {
        if let _vm = vm {
            self.titleMovie.text = _vm.title
            _vm.downloadImage(completion: { (image, error) in
                self.imageMovie.image = image
            })
        }
    }

}

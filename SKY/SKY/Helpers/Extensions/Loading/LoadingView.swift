//
//  LoadingView.swift
//  SKY
//
//  Created by Andre Guedes on 01/07/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation

class LoadingView: KDLoadingView {
    
    func showLoading() {
        self.hidesWhenStopped = false
        self.startAnimating()
    }
    
    func hideLoading() {
        self.hidesWhenStopped = true
        self.stopAnimating()
    }
    
    
    
}

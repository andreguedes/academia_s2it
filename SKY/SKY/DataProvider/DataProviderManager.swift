//
//  DataProviderManager.swift
//  SKY
//
//  Created by Andre Guedes on 25/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation

protocol GenericDataProvider: class {
    func success(viewModel: Any)
    func failed(_ provider: GenericDataProvider?, error: NSError)
}

class DataProviderManager<T, S> {
    
    var delegate: T?
    var viewModel: S?
    
}

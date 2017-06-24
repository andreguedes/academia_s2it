//
//  GenericAPIStore.swift
//  SKY
//
//  Created by Andre Guedes on 24/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation

protocol GenericStore {
    var error: NSError {get set}
    typealias completion <T> = (_ result: T, _ failure: NSError?) -> Void
}

class GenericAPIStore {
    
    var error = NSError(domain: "", code: 901, userInfo: [NSLocalizedDescriptionKey : "Error ao obter as informações"])
    
}

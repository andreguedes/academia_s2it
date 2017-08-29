//
//  TestVM.swift
//  SKY
//
//  Created by Andre Guedes on 01/07/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation

class TestVM {
    
    open static func doubleValue(_ value: Int) -> Int {
        if value > 0 {
            return value * 2
        }
        return value
    }
    
}

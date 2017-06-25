//
//  ErrorAlert.swift
//  SKY
//
//  Created by Andre Guedes on 25/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation
import UIKit

class ErrorAlert: NSObject {
    
    static let shared = ErrorAlert()
    override init() {
        super.init()
    }
    
    func showErrorAlert(_ title: String, message: String, onController: UIViewController) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel) { (action) in }
        alertController.addAction(cancelAction)
        if onController.presentedViewController != alertController {
            onController.present(alertController, animated: true, completion: nil)
        }
    }
    
}

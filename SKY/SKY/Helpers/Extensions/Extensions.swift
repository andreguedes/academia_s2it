//
//  Extensions.swift
//  SKY
//
//  Created by Andre Guedes on 25/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    
    func configNavigation() {
        self.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = false
        self.view.backgroundColor = UIColor.black
        self.navigationBar.barTintColor = UIColor.white
        self.navigationBar.backgroundColor = UIColor.red
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
}

public protocol ErrorHandleable {
    func showError(title: String, message: String, description: String, error: Error?)
}

extension ErrorHandleable where Self: UIViewController {
    
    func showError(title: String = "Alerta!", message: String = "Erro no sistema", description: String = "Erro genérico", error: Error? = nil) {
        ErrorAlert.shared.showErrorAlert(title, message: message, onController: self)
    }
    
}

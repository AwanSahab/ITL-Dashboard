//
//  CommonClass.swift
//  ITL-Dashboard
//
//  Created by Muneeb Awan on 1/4/18.
//  Copyright © 2018 Muneeb Awan. All rights reserved.
//

import Foundation
import UIKit

class CommonClass {
    static var sharedInstance = CommonClass()

    func validateEmail(enteredEmail: String) -> Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
    }
    
    func showAlert (title : String , message : String) {
        let alert : UIAlertView = UIAlertView(title: title, message: message, delegate: self, cancelButtonTitle: "Ok")
        alert.show()
    }
}

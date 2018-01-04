//
//  ViewController.swift
//  ITL-Dashboard
//
//  Created by Muneeb Awan on 1/4/18.
//  Copyright © 2018 Muneeb Awan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txtFieldEmailAdd: UITextField!
    @IBOutlet var txtFieldPwd: UITextField!
    @IBOutlet var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnSubmit.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actSubmitBPress(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toViews", sender: nil)
//        if txtFieldEmailAdd.text != "" && txtFieldPwd.text != "" && CommonClass.sharedInstance.validateEmail(enteredEmail: txtFieldEmailAdd.text!) {
//
//        } else {
//            if txtFieldEmailAdd.text == "" {
//                CommonClass.sharedInstance.showAlert(title: "Please Enter Email Address", message: "Email field cannot be empty.")
//            } else if txtFieldPwd.text == "" {
//                CommonClass.sharedInstance.showAlert(title: "Please Enter Password", message: "Password field cannot be empty.")
//            } else if !CommonClass.sharedInstance.validateEmail(enteredEmail: txtFieldEmailAdd.text!)  {
//                CommonClass.sharedInstance.showAlert(title: "The Email Is Not Of Proper Format", message: "Please check Email Address.")
//            }
//        }
    }
}


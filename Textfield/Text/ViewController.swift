//
//  ViewController.swift
//  Text
//
//  Created by Adam Saher on 2019-09-17.
//  Copyright © 2019 Adam Saher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textfield_1: UITextField!
    @IBOutlet weak var textfield_2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //according to the action, delegate the approperiate method to handle the texfields.
        textfield_1.delegate = self
        textfield_2.delegate = self
    }
    
    //Check whether the user should be allowed to exit the textfield editing.
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if (textField.text!.count < 2) {
            return false
        }
        return true
    }
    
    //override the method in UITextFieldDelegate protocol
    //When user presses return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Dismiss the keyboard
        textField.resignFirstResponder()
        textField.text = "" // CLEARS ONLY LAST TEXTFIELD :/
        return true
    }
}




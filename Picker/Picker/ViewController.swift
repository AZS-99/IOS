//
//  ViewController.swift
//  Picker
//
//  Created by Adam Saher on 2019-09-17.
//  Copyright © 2019 Adam Saher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    let dataSource = ["WEB422", "MAP523", "MAP524"]
    
    
    @IBOutlet weak var courses_picker: UIPickerView!
    @IBOutlet weak var output_lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        courses_picker.delegate = self
        courses_picker.dataSource = self
    }
    
    //Number of wheels
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Number of elements in every wheel
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    //What to do with the selected element?
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        output_lbl.text = dataSource[row]
    }


}


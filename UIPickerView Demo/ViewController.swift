//
//  ViewController.swift
//  UIPickerView Demo
//
//  Created by Mirko Cukich on 9/29/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var colorArray = ["White", "Yellow", "Orange", "Red", "Magenta", "Purple", "Blue", "Cyan", "Green",
                        "Dark Green", "Brown", "Tan", "Light Grey", "Medium Grey", "Dark Grey", "Black"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        textLabel.text = colorArray[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return colorArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return colorArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        textLabel.text = colorArray[row]
    }

}


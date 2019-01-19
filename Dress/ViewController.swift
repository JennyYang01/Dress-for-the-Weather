//
//  ViewController.swift
//  Dress for the Weather
//
//  Created by Jennifer Yang on 2019-01-02.
//  Copyright © 2019 Leapteks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var gender_text: UITextField!
    @IBOutlet weak var gender_pick: UIPickerView!
    @IBOutlet weak var text_dress: UILabel!
    @IBOutlet weak var text_weather: UILabel!
    @IBOutlet weak var text_for_the: UILabel!
    @IBOutlet weak var image_sun: UIImageView!
    @IBOutlet weak var Cloud: UIImageView!
    @IBOutlet weak var full_name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var sign_up: UIButton!
    @IBOutlet weak var sign_in_google: UIButton!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var login: UIButton!
    
    var gender_list = ["Male", "Female", "Other"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return gender_list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        self.view.endEditing(true)
        return gender_list[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.gender_text.text = self.gender_list[row]
        self.gender_pick.isHidden = true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == self.gender_text {
            self.gender_pick.isHidden = false
            textField.endEditing(true)
        }
    }

}


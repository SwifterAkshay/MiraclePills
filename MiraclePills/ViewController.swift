//
//  ViewController.swift
//  MiraclePills
//
//  Created by Akshay Thakare on 1/6/17.
//  Copyright © 2017 Akshay Thakare. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLbl: UILabel!
    
    @IBOutlet weak var countryInputTxt: UITextField!
    
    @IBOutlet weak var zipInputTxt: UITextField!
    
    @IBOutlet weak var zipLbl: UILabel!
    
    @IBOutlet weak var successImg: UIImageView!
    let states = ["Texas", "NewYork", "California", "North Carolina", "Maine"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryInputTxt.isHidden = true
        zipLbl.isHidden = true
        zipInputTxt.isHidden = true
    }
    
    @IBAction func buyNowPresses(_ sender: Any) {
        for view in self.view.subviews as [UIView]{
            view.isHidden = true
        }
        
        successImg.isHidden = false
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryInputTxt.isHidden = false
        zipLbl.isHidden = false
        zipInputTxt.isHidden = false
    }
}


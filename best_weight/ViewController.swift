//
//  ViewController.swift
//  best weight
//
//  Created by Mohamed Abd el Aty on 1/9/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    var gender = ["male","female"]

    @IBOutlet weak var pickergender: UIPickerView!
    @IBOutlet weak var txtage: UITextField!
    @IBOutlet weak var ladisplaybestweight: UILabel!
    @IBOutlet weak var txtheight: UITextField!
    @IBOutlet weak var laselectedgender: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickergender.dataSource = self
        pickergender.delegate = self

    }
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    var selectedgender = 0
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectedgender = row
        return gender[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        laselectedgender.text = gender[row]
    }
    
    @IBAction func bugetbestweight(_ sender: Any) {
        
        let age : Int = Int (txtage.text!)!
        let height : Int = Int (txtheight.text!)!
        var bestweight = height*10 - (age/5)
        if selectedgender == 0
        {bestweight += 10 }
        else {
            bestweight -= 10
        }
        ladisplaybestweight.text = "best wight \(bestweight)"
    }
    
}


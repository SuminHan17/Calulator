//
//  UserViewController.swift
//  Calulator
//
//  Created by 한수민 on 08/04/2019.
//  Copyright © 2019 한수민. All rights reserved.
//

import UIKit

class UserViewController: UIViewController,UITextFieldDelegate,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var height: UITextField!
    @IBOutlet var weight: UITextField!
    @IBOutlet var age: UIPickerView!
    @IBOutlet var gender: UISegmentedControl!
    @IBOutlet var subView: UIView!
    
    var userAge = Array<Int>(18...60)
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return userAge.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(userAge[row])
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        subView.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleView(_ sender: UISwitch) {
        if sender.isOn {
            if height.text == "" {
                titleLabel.text = "키를 입력해주세요"
            }
            else if weight.text == "" {
                titleLabel.text = "몸무게를 입력해주세요"
            }
            else {
                subView.isHidden = !sender.isOn
            }
        }
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userHeight = Float(height!.text!)!
        let userWeight = Float(weight!.text!)!
        let userAges = Float(userAge[age.selectedRow(inComponent: 0)])
        var bMR = 0
            
        if gender.selectedSegmentIndex == 0 {
            let sub = 9.6*userWeight
            let sub2 = sub+(1.8*userHeight)
            bMR = Int(655+sub2-(4.7*userAges))
        }
        else {
            let sub = 13.8*userWeight
            let sub2 = sub+(5*userHeight)
            bMR = Int(66+sub2-(6.8*userAges))
        }
        basicKcalSub = bMR
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

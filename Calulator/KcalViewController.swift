//
//  KcalViewController.swift
//  Calulator
//
//  Created by 한수민 on 08/04/2019.
//  Copyright © 2019 한수민. All rights reserved.
//

import UIKit

class KcalViewController: UIViewController, UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //delegate method
        textField.resignFirstResponder()
        return true
        
    }

    @IBOutlet var kcal: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        eatKcalSub = Int(kcal.text!)
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

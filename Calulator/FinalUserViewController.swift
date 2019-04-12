//
//  FinalUserViewController.swift
//  Calulator
//
//  Created by 한수민 on 08/04/2019.
//  Copyright © 2019 한수민. All rights reserved.
//

import UIKit

var basicKcalSub : Int?
var exerciseKcal : Int?
var eatKcalSub : Int?

class FinalUserViewController: UIViewController {

    @IBOutlet var basicKcal: UILabel!
    @IBOutlet var exerKcal: UILabel!
    @IBOutlet var eatKcal: UILabel!
    @IBOutlet var resultKcal: UILabel!
    @IBOutlet var subView: UIView!
    @IBOutlet var resultImageView: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    let goodImage = UIImage(named : "good.png")
    let badImage = UIImage(named : "bad.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        basicKcal.text = String(basicKcalSub!)
        exerKcal.text = String(exerciseKcal!)
        if let eatCheck = eatKcalSub {
            eatKcal.text = String(eatCheck)
        }
        else {
            eatKcal.text = "0"
            eatKcalSub = 0
        }
        resultKcal.text = String(basicKcalSub!+exerciseKcal!-eatKcalSub!)
        subView.isHidden = true
    }

    @IBAction func resultButtonPressed(_ sender: UIButton) {
        subView.isHidden = false

        if let result = resultKcal.text, let finalResult = Int(result){
            if finalResult < 600 && finalResult > -600 {
                resultImageView.image = goodImage
                resultLabel.text = "아주 건강한 하루였네요"
            }
            else {
                resultImageView.image = badImage
                resultLabel.text = "아쉬운 하루였지만 내일은 힘내요!"
            }
        }
   
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

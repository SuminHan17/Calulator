//
//  ExerciseViewController.swift
//  Calulator
//
//  Created by 한수민 on 08/04/2019.
//  Copyright © 2019 한수민. All rights reserved.
//

import UIKit


class ExerciseViewController: UIViewController {
    
    @IBOutlet var showExercise: UILabel!
    @IBOutlet var swimImageView: UIImageView!
    @IBOutlet var bycicleImageView: UIImageView!
    @IBOutlet var joggingImageView: UIImageView!
    let gray_swim = UIImage(named: "gray_swim.png")
    let gray_bycicle = UIImage(named: "gray_bycicle.png")
    let gray_jogging = UIImage(named: "gray_jogging")
    @IBOutlet var exerciseTime: UILabel!
    @IBOutlet var exerciseMin: UISlider!
    var cal : Int = 90
    @IBOutlet var subView: UIView!
    
    
    @IBOutlet var exerciseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subView.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        subView.isHidden = false
        let nameExer = sender.titleLabel?.text
        showExercise.text = nameExer
        if ( nameExer == "수영") {
            swimImageView.image = UIImage(named: "swim.png")
            bycicleImageView.image = gray_bycicle
            joggingImageView.image = gray_jogging
        }
        else if (nameExer == "자전거") {
            swimImageView.image = gray_swim
            bycicleImageView.image = UIImage(named: "bycicle.png")
            joggingImageView.image = gray_jogging
        }
        else {
            swimImageView.image = gray_swim
            bycicleImageView.image = gray_bycicle
            joggingImageView.image = UIImage(named: "jogging.png")
        }
    }
    
    @IBAction func timeExercise(_ sender: UISlider) {
        let result = String(format:"%10.0f", sender.value)
        exerciseTime.text = result
        cal = Int(sender.value)
    }

 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let finalKcal : Int
        if showExercise.text == "수영" {
            finalKcal = Int(12*cal)
        }
        else if showExercise.text == "자전거" {
            finalKcal = Int(11*cal)
        }
        else {
            finalKcal = Int(5*cal)
        }
        exerciseKcal = finalKcal
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

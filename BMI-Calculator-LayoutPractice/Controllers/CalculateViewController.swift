//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var HeightSlider: UISlider!
    @IBOutlet weak var WeightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func slideHeight(_ sender: UISlider) {
        heightLabel.text = (String(format: "%.2f",HeightSlider.value)) + "m"
    }
    
    @IBAction func slideWeight(_ sender: UISlider) {
        weightLabel.text = (String(format: "%.0f",WeightSlider.value)) + "kg"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "goToResult"){
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.BMIValue = "0.0"
            destinationVC.BMIValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
    @IBAction func calculateIBM(_ sender: UIButton){
        let height = HeightSlider.value
        let weight = WeightSlider.value
        
        calculatorBrain.calculateBMI(height, weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)

    }

    
}


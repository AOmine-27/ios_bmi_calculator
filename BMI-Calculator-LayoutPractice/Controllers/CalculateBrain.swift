//
//  CalculateBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Andre Omine on 14/05/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        let bmiValue = weight/pow(height, 2)
        if (bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue()->String{
        let bmiString = String(format: "%.1f",bmi?.value ?? 0.0)
        return bmiString

    }
    
    func getAdvice()->String{
        let bmiAdvice = bmi?.advice ?? "No Advices"
        return bmiAdvice
    }
    
    func getColor()->UIColor{
        let bmiColor = bmi?.color ?? UIColor.clear
        return bmiColor
    }
}

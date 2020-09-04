//
//  BMI.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Andre Omine on 14/05/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct BMI{
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float, advice: String, color: UIColor){
        self.value = value
        self.advice = advice
        self.color = color
    }
}

//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Andre Omine on 14/05/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    var BMIValue: String?
    var advice: String?
    var color: UIColor?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = BMIValue
        adviceLabel.text = advice
        background.backgroundColor = color
            
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated:true, completion: nil)
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

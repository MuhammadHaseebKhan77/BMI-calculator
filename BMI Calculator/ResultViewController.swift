//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Apple on 03/06/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

protocol TestClass {
    
}

class ResultViewController: UIViewController {
    
    var bmiValue:String?
    var advise:String?
    var colour:UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text=bmiValue
        adviseLabel.text=advise
        view.backgroundColor=colour
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
        
    }
   

}

//
//  secondViewController.swift
//  BMI Calculator
//
//  Created by Apple on 03/06/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit
class SecondViewController:UIViewController{
    
    var bmiValue="0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor=UIColor.red
        
        let label=UILabel()
        label.text="Hello"
        label.frame=CGRect(x: 0, y: 0, width: 100, height: 50)//A structure that contains the location and dimensions of a rectangle
        view.addSubview(label)
    }
}

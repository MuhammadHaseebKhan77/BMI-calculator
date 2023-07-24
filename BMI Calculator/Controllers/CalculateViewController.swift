//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
  var calculatorBrain=CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
       let height=(String(format:"%.2f",sender.value))// this will add two zeros after decimal point
        heightLabel.text="\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight=(String(format:"%.0f",sender.value))
        weightLabel.text="\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {//we want to get the value of height and weight but we cannot use  sender value object to pass us its value bcacuse when calculate button is pressed its sender sends the value of of ui button where as the sender of weight and height has ui slider value so thats why we neend to creat there outlet to interact with them(sender triggered the IBAction orIBAction)
        let height=heightSlider.value
       let weight=weightSlider.value
      
        calculatorBrain.calculateBMI(height:height,weight:weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        if segue.identifier=="goToResult"{
            let destinationVC=segue.destination as! ResultViewController
            destinationVC.bmiValue=calculatorBrain.getBMIValue()
            destinationVC.advise = calculatorBrain.getAdvice()
            destinationVC.colour = calculatorBrain.getColour()
        }
            
    }
}

//The identifier in the context of iOS development refers to a unique string that is assigned to a particular object or element. It serves as an identifier or label that can be used to distinguish one object from another.

//In the code snippet you provided, the identifier is used in the line if segue.identifier == "goToResult". Here, the segue.identifier refers to the identifier assigned to a specific segue in the Interface Builder. Segues are used to define the flow of navigation between view controllers. By assigning an identifier to a segue, you can later check the identifier in code to determine which segue is being performed.


//In the context of iOS development, "destination" refers to the destination view controller that will be presented or pushed to the screen during a segue transition.
//By accessing the destination property of the UIStoryboardSegue object passed into the prepare(for:sender:) method, you can obtain a reference to the destination view controller and perform any necessary setup or data passing before the transition occurs.

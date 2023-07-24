
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    var value: String?
    
    func getBMIValue()->String{
        if bmi != nil {
            let bmiTo1DecimalPlace=String(format:"%.1f",bmi?.value ?? 0.0) //The nil-coalescing operator (??) provides a way to unwrap an optional value and provide a default value in case the optional is nil
            return bmiTo1DecimalPlace
        }else{
            return "0.0"
        }
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "No advice"
    }
    func getColour()->UIColor{
        return bmi?.colour ?? UIColor.white
    }
    
    
    mutating func calculateBMI(height:Float,weight:Float){
       let bmiValue=weight/(height*height)
        if bmiValue<18.5{
            bmi=BMI(value: bmiValue, advice: "Eat more", colour: UIColor.blue)
        }else if bmiValue<24.9{
            bmi=BMI(value: bmiValue, advice: "Fit as fiddle", colour: UIColor.green)
        }else{
            bmi=BMI(value: bmiValue, advice: "Eat less", colour: UIColor.red)
        }
       
    }
}

//The purpose of using the nil-coalescing operator in this code is to handle the case when bmi or its value property is nil. By providing a default value (0.0 in this case), the code ensures that a valid value (a string representation of the BMI) is always returned, even if there is no valid bmi object or value property.

//This helps prevent unexpected crashes or errors that could occur if the optional value is not handled properly. It provides a fallback value to ensure that the getBMIValue() function always returns a valid result, either the formatted BMI value or the default value "0.0



//Optional chaining is a feature in Swift that allows you to safely access properties, methods, and subscripts of an optional value, without having to manually unwrap the optional. It provides a convenient way to handle situations where a value might be nil.

//The optional chaining operator ? is used to chain together multiple optional values or optional properties. It allows you to access the member of an optional if it has a value, or simply return nil if the optional itself is nil. This helps prevent runtime errors that could occur if you try to access properties or call methods on a nil value.

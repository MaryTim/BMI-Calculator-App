//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Anton Budkevich on 10/7/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculate(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue <= 18.5 {
            bmi = BMI(value: bmiValue , advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.5 && bmiValue > 18.5 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
}



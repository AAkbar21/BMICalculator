//
//  BMICalculations.swift
//  BMICalculator
//
//  Created by Cormell, David - DPC on 24/02/2022.
//

import Foundation



class BMICalculations {
    func calculateBMI(weight: Double, height: Double) -> Double {
        let BMI = (weight/height)
        return BMI
    }
    
    func lookUpBmiClassification(bmi: Double) -> String {
        if bmi < 18.5 {
            return "Underweight"
        } else if bmi >= 18.5 && bmi < 24.9 {
            return "Healthy"
        } else if bmi >= 25 && bmi < 29.9 {
            return "Overweight"
        } else {
            return "Obese"
        }
    }



}

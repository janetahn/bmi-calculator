//
//  BMIViewModel.swift
//  BMICalculator
//
//  Created by Janet Ahn on 2025-04-28.
//

import Foundation

class BMIViewModel: ObservableObject {
    @Published var height: Double = 1.5 // meters
    @Published var weight: Double = 60  // kg
    @Published var bmi: BMI? = nil
    @Published var isShowingResult = false
    
    func calculateBMI() {
        let bmiValue = weight / (height * height)
        bmi = BMI(value: bmiValue)
        isShowingResult = true
    }
    
    func reset() {
        height = 1.5
        weight = 60
        bmi = nil
        isShowingResult = false
    }
}

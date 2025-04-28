//
//  BMIModel.swift
//  BMICalculator
//
//  Created by Janet Ahn on 2025-04-28.
//

import Foundation

struct BMI {
    let value: Double
    
    var formattedValue: String {
        String(format: "%.1f", value)
    }
}

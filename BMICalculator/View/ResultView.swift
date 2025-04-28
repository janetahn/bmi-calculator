//
//  ResultView.swift
//  BMICalculator
//
//  Created by Janet Ahn on 2025-04-28.
//

import SwiftUI

struct ResultView: View {
    @ObservedObject var viewModel: BMIViewModel
    
    var body: some View {
        VStack(spacing: 30) {
            if let bmi = viewModel.bmi {
                Text("Your BMI is")
                    .font(.title)
                Text(bmi.formattedValue)
                    .font(.system(size: 60, weight: .bold))
            }
            
            Button("Recalculate") {
                viewModel.reset()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    let viewModel = BMIViewModel()
    viewModel.bmi = BMI(value: 22.5)
    return ResultView(viewModel: viewModel)
}

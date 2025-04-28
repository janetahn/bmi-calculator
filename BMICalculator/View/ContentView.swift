//
//  ContentView.swift
//  BMICalculator
//
//  Created by Janet Ahn on 2025-04-28.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = BMIViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Text("Select Height")
                Slider(value: $viewModel.height, in: 1.0...2.5, step: 0.01)
                Text("\(String(format: "%.2f", viewModel.height)) m")
                
                Text("Select Weight")
                Slider(value: $viewModel.weight, in: 30...150, step: 1)
                Text("\(String(format: "%.0f", viewModel.weight)) Kg")
                
                Button("Calculate BMI") {
                    viewModel.calculateBMI()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
            .navigationTitle("BMI Calculator")
            .navigationDestination(isPresented: $viewModel.isShowingResult) {
                ResultView(viewModel: viewModel)
            }
        }
    }
}

#Preview {
    ContentView()
}

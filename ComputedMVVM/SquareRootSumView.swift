//
//  ContentView.swift
//  ComputedMVVM
//
//  Created by Kevin Lam on 4/3/2025.
//

import SwiftUI

struct SquareRootSumView: View {
    // MARK: Stored properties
    @State var viewModel = SquareRootSumViewModel()
    
    // MARK: Computed properties
    var body: some View {
        VStack(spacing: 20) {
            
            // INPUT
            TextField("Enter first number", text: $viewModel.providedNumber1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
            
            TextField("Enter second number", text: $viewModel.providedNumber2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
            
            // OUTPUT
            if let result = viewModel.squareRootSum?.result {
                Text("Square root of sum: \(result, specifier: "%.2f")")
                    .font(.title2)
                    .foregroundColor(.blue)
            }
            
            
            #Preview {
                SquareRootSumView()
            }

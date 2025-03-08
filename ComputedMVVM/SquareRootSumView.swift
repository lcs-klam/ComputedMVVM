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
                Text("Square root of sum: \(result.formatted(.number.precision(.significantDigits(2))))")
                    .font(.system(size: 24))
                    .foregroundColor(.blue)
                
                // Add a button so that the result can be saved
                Button {
                    viewModel.saveResult()
                    // DEBUG: Show how many items are in the resultHistory array
                    print("There are \(viewModel.resultHistory.count) elements in the resultHistory array.")
                } label: {
                    Text("Save")
                }
                .buttonStyle(.borderedProminent)
                .padding(.bottom)
            } else {
                // Show recovery suggestion if there's an error
                Text(viewModel.recoverySuggestion)
                    .foregroundColor(.red)
                    .font(.caption)
            }
            HStack {
                Text("History")
                    .bold()
                Spacer()
            }
            .padding(.vertical)

            // Iterate over the history of results
            List(viewModel.resultHistory) { priorResult in
                SquareRootSumItemView(squareRootSum: priorResult)
            }
            .listStyle(.plain)

        }
        .padding()
    }
}

#Preview {
    SquareRootSumView()
}

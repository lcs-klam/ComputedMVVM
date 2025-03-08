//
//  SquareRootSumViewModel.swift
//  ComputedMVVM
//
//  Created by Kevin Lam on 4/3/2025.
//

import Foundation

@Observable
class SquareRootSumViewModel {
    
    // MARK: Stored properties
    var resultHistory: [SquareRootSum] = []
    var providedNumber1: String = ""
    var providedNumber2: String = ""
    var recoverySuggestion: String = ""
    
    // MARK: Computed properties
    var squareRootSum: SquareRootSum? {
        
        // Validate number1
        guard let num1 = Double(providedNumber1), num1 >= 0 else {
            recoverySuggestion = "Please enter a non-negative number for the first value."
            return nil
        }
        
        // Validate number2
        guard let num2 = Double(providedNumber2), num2 >= 0 else {
            recoverySuggestion = "Please enter a non-negative number for the second value."
            return nil
        }
        
        // No error, return the SquareRootSum instance
        recoverySuggestion = ""
        return SquareRootSum(number1: num1, number2: num2)
    }
    
    // MARK: Initializer
    init(
        providedNumber1: String = "",
        providedNumber2: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedNumber1 = providedNumber1
        self.providedNumber2 = providedNumber2
        self.recoverySuggestion = recoverySuggestion
    }
    
    func saveResult() {
        if let squareRootSum = self.squareRootSum {
            self.resultHistory.insert(squareRootSum, at: 0)
        }
    }
}

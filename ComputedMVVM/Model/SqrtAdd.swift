//
//  SqrtAdd.swift
//  ComputedMVVM
//
//  Created by Kevin Lam on 4/3/2025.
//

import Foundation

// MODEL
struct SquareRootSum {
    
    // MARK: Stored properties
    var number1: Double
    var number2: Double
    
    // MARK: Computed properties
    var result: Double {
        return sqrt(number1 + number2)
    }
}

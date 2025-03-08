//
//  SquareRootSumItemView.swift
//  ComputedMVVM
//
//  Created by Kevin Lam on 8/3/2025.
//

import SwiftUI

struct SquareRootSumItemView: View {
    
    // MARK: Stored properties
    let squareRootSum: SquareRootSum
    
    // MARK: Computed properties
    var body: some View {
        
        HStack {
            // Show the provided numbers and the result
            HStack(alignment: .center) {
                HStack(alignment: .top) {
                    
                    Text("√\(squareRootSum.number1.formatted())")
                        .font(.largeTitle)
                    
                    Text("+ √\(squareRootSum.number2.formatted())")
                        .font(.largeTitle)
                }
                HStack {
 
                    Text("=")
                        .font(.largeTitle)
 
                    Text("\(squareRootSum.result.formatted())")
                        .font(.largeTitle)
                }
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
            Spacer()
        }
        
    }
}

#Preview {
    SquareRootSumItemView(squareRootSum: SquareRootSum(number1: 4, number2: 9))
        .padding()
}

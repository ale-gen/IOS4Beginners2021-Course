//
//  MathTools.swift
//  HelloSwift
//
//  Created by Aleksandra Generowicz on 10/11/2021.
//

import Foundation

class MathTools {
    
    func fibonacci(_ number: Int) -> Int {
        func innerFibonacci(n: Int, previousNumber: Int, actualNumber: Int) -> Int {
            if (n == 0) {
                return previousNumber;
            } else {
                return innerFibonacci(n: n - 1, previousNumber: actualNumber, actualNumber: previousNumber + actualNumber)
            }
        }
        return innerFibonacci(n: number, previousNumber: 0, actualNumber: 1);
    }
    
}

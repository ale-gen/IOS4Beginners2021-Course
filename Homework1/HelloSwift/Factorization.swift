//
//  Factorization.swift
//  HelloSwift
//
//  Created by Aleksandra Generowicz on 10/11/2021.
//

import Foundation

class Factorization {
    
    enum Result: Equatable {
        case prime
        case composite(factors: [Int])
    }
    
    static func factorize(_ number: Int) -> Result? {
        var primeNumber = 2
        var currentNumberToFactor = number
        var primeFactors = [Int]()
        
        while(currentNumberToFactor > 1) {
            while(currentNumberToFactor % primeNumber == 0) {
                currentNumberToFactor /= primeNumber
                primeFactors.append(primeNumber)
            }
            primeNumber += 1
        }
        return getResult(primeFactors)
    }
    
    static func getResult(_ results: [Int]) -> Result? {
        switch results.count {
        case 0:
            return nil
        case 1:
            return Result.prime
        default:
            return Result.composite(factors: results)
        }
    }
}

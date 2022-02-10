//
//  FactorizationTests.swift
//  HelloSwiftTests
//
//  Created by Aleksandra Generowicz on 11/11/2021.
//

import XCTest
@testable import HelloSwift

class FactorizationTests: XCTestCase {

    func testFactorizationOf1() {
        XCTAssertNil(Factorization.factorize(1))
    }
    
    func testFactorizationOf2() {
        XCTAssertEqual(Factorization.factorize(2), .prime)
    }
    
    func testFactorizationOf5() {
        XCTAssertEqual(Factorization.factorize(5), .prime)
    }
    
    func testFactorizationOf13() {
        XCTAssertEqual(Factorization.factorize(13), .prime)
    }
    
    func testFactorizationOf6() {
        XCTAssertEqual(Factorization.factorize(6), .composite(factors: [2, 3]))
    }
    
    func testFactorizationOf8() {
        XCTAssertEqual(Factorization.factorize(8), .composite(factors: [2, 2, 2]))
    }
    
    func testFactorizationOfMult() {
        XCTAssertEqual(Factorization.factorize(2 * 2 * 5 * 11 * 13), .composite(factors: [2, 2, 5, 11, 13]))
    }
    
    func testFactorizationOf4() {
        XCTAssertEqual(Factorization.factorize(4), .composite(factors: [2, 2]))
    }
    

    func testPerformanceExample() throws {
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by student on 03/10/2023.
//

import XCTest
@testable import Calculator

final class CalculatorTests: XCTestCase {

    func testPositiveScenarioForAddCalculation(){
        XCTAssertEqual(Operations().Add(first: 3, second: 5), 8)
    }
    
    func testPositiveScenarioForSubCalculation(){
        XCTAssertEqual(Operations().Sub(first: 3, second: 5), -2)
    }
    
    func testPositiveScenarioForProdCalculation(){
        XCTAssertEqual(Operations().Multiply(first: 5, second: 5), 25)
    }
    
    func testPositiveScenarioForDivCalculation(){
        XCTAssertEqual(Operations().Divide(first: 10, second: 2), 5)
    }
    
    func testPositiveScenarioForSinCalculation(){
        let value = Operations().Sin(first: 5)
        XCTAssertGreaterThanOrEqual(value, -1)
        XCTAssertLessThanOrEqual(value, 1)
    }
    func testZeroScenarioForDivCalculation(){
        XCTAssertNil(Operations().Divide(first: 5, second: 0))
    }
    
}







//testZeroScenarioForDivCalculation()


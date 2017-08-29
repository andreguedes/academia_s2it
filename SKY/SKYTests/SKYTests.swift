//
//  SKYTests.swift
//  SKYTests
//
//  Created by Andre Guedes on 24/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import XCTest
@testable import SKY

class SKYTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testDoubleValue_WithValueGreaterThanZero_ShouldSuccess() {
        let expectedValue: Int = 2
        let value = TestVM.doubleValue(1)
        
        XCTAssertEqual(expectedValue, value, "Resposta incorreta, o valor esperado era 2")
    }
    
    func testDoubleValue_WithValueGreaterThanZero_ShouldFail() {
        let expectedValue: Int = 0
        let value = TestVM.doubleValue(0)
        
        XCTAssertEqual(expectedValue, value, "Resposta incorreta")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Donald Belliveau on 2017-11-29.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    /*
     Test Wage Class GetHours Function.
     */
    
    func testGetHours() {
        // Test 100 / 25 = 4
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4)
        // Test 253.53 / 15.50 = 16.16 (17-> Rounded up)
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.53) == 17)
    }
    
    /*
     END Test Wage Class GetHours Function.
     */
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

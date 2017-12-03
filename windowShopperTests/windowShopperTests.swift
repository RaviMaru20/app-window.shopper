//
//  windowShopperTests.swift
//  windowShopperTests
//
//  Created by Ravi Maru on 2017-11-29.
//  Copyright © 2017 Ravi Maru. All rights reserved.
//

import XCTest

class windowShopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        XCTAssert(wage.HoursLogic(forwage: 25, forprice: 100) == 4)
        XCTAssert(wage.HoursLogic(forwage: 15.50, forprice: 255) == 17)

    }
   
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

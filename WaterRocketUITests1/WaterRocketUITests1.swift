//
//  WaterRocketUITests1.swift
//  WaterRocketUITests1
//
//  Created by Niko Neufeld on 11/25/19.
//  Copyright © 2019 Niko Neufeld. All rights reserved.
//

import XCTest
import WaterRocketUI

class WaterRocketUITests1: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let rocket = RocketMock()
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssert(true)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}

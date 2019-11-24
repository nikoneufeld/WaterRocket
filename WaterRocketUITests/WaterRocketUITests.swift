//
//  WaterRocketUITests.swift
//  WaterRocketUITests
//
//  Created by Niko Neufeld on 11/24/19.
//  Copyright © 2019 Niko Neufeld. All rights reserved.
//

import XCTest
import WaterRocketUI

class WaterRocketUITests: XCTestCase {
    let rocket = RocketMock()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFlight() {
        let duration = 3
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var heights = [Double]()
        rocket.fly(duration: duration,timeResolution: 0.1)
        var t = 0.0
        heights.append(rocket.altitude)
        while (t  < Double(duration) + 0.5) {
            print("Height \(rocket.altitude)")
            if rocket.altitude != heights.last! {
                heights.append(rocket.altitude)
            }
            usleep(10000)
            t += 0.01
        }
        XCTAssert(heights.count == 29)
    }

 //   func testPerformanceExample() {
   //     // This is an example of a performance test case.
   //     measure {
   //         // Put the code you want to measure the time of here.
    //    }
   // }

}

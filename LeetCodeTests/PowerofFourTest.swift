//
//  PowerofFourTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/13.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class PowerofFourTest: XCTestCase {

    func testIsPowerOfFour() {
        let power = PowerofFour()
        XCTAssertFalse(power.isPowerOfFour(24))
        XCTAssertTrue(power.isPowerOfFour(16))
        XCTAssertTrue(power.isPowerOfFour(4))
        XCTAssertFalse(power.isPowerOfFour(2))
    }

}

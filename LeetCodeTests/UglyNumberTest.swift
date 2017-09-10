//
//  UglyNumberTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/10.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class UglyNumberTest: XCTestCase {

    func testIsUgly() {
        let uglyNumber = UglyNumber()
        XCTAssertTrue(uglyNumber.isUgly(1))
        XCTAssertTrue(uglyNumber.isUgly(6))
        XCTAssertTrue(uglyNumber.isUgly(8))
        XCTAssertFalse(uglyNumber.isUgly(14))
        
    }
}

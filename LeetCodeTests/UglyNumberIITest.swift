//
//  UglyNumberIITest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/11.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class UglyNumberIITest: XCTestCase {

    func testNthUglyNumber() {
        let uglyNumber = UglyNumberII()
        
        XCTAssertEqual(uglyNumber.nthUglyNumber(1), 1)
        XCTAssertEqual(uglyNumber.nthUglyNumber(6), 6)
        XCTAssertEqual(uglyNumber.nthUglyNumber(10), 12)
    }

}

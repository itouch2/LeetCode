
//
//  ReverseIntegerTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/14.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class ReverseIntegerTest: XCTestCase {
    func testReverseReverse() {
        let reverse = ReverseInteger()
        
        XCTAssertEqual(reverse.reverse(123), 321)
        XCTAssertEqual(reverse.reverse(-123), -321)
    }
}

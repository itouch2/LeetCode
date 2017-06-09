//
//  HappyNumberTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/6/9.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class HappyNumberTest: XCTestCase {

    func testIsHappyNumber() {
        let happyNumber = HappyNumber()
        XCTAssertEqual(happyNumber.isHappy(20), false)
        XCTAssertEqual(happyNumber.isHappy(19), true)
        XCTAssertEqual(happyNumber.isHappy(16), false)
        XCTAssertEqual(happyNumber.isHappy(8), false)
    }

}

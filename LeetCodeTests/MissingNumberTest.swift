//
//  MissingNumberTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/5/24.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class MissingNumberTest: XCTestCase {

    func testMissingNumber() {
        let missingNumber = MissingNumber()
        XCTAssertEqual(missingNumber.missingNumber([0, 1, 3]), 2)
        XCTAssertEqual(missingNumber.missingNumber([0, 1, 2, 3, 5, 6, 7]), 4)
    }

}

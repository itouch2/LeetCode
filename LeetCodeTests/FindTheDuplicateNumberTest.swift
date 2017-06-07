//
//  FindTheDuplicateNumberTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/6/6.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class FindTheDuplicateNumberTest: XCTestCase {

    func testFindTheDuplicateNumber() {
        let findTheDuplicateNumber = FindTheDuplicateNumber()
        XCTAssertEqual(findTheDuplicateNumber.findDuplicate([1, 2, 3, 3]), 3)
        XCTAssertEqual(findTheDuplicateNumber.findDuplicate([1, 2, 2, 3]), 2)
        XCTAssertEqual(findTheDuplicateNumber.findDuplicate([1, 2, 3, 4, 5, 6, 6]), 6)
        XCTAssertEqual(findTheDuplicateNumber.findDuplicate([1, 3, 4, 2, 2]), 2)
        XCTAssertEqual(findTheDuplicateNumber.findDuplicate([8, 1, 1, 9, 5, 4, 2, 7, 3, 6]), 1)
        XCTAssertEqual(findTheDuplicateNumber.findDuplicate([8, 8, 8, 8, 5, 4, 2, 7, 3, 6]), 8)
        XCTAssertEqual(findTheDuplicateNumber.findDuplicate([8, 1, 7, 9, 10, 11, 12, 8, 8, 15, 5, 4, 2, 8, 3, 6]), 8)
    }

}

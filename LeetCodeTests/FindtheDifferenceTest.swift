//
//  FindtheDifferenceTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/14.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class FindtheDifferenceTest: XCTestCase {

    func testFindTheDifference() {
        let find = FindtheDifference()
        XCTAssertEqual(find.findTheDifference("abcd", "abcde"), "e")
    }
}

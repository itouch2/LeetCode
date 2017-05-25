//
//  H-IndexTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/5/24.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class H_IndexTest: XCTestCase {

    func testHIndex() {
        XCTAssertEqual(H_Index.hIndex([1]), 1)
        XCTAssertEqual(H_Index.hIndex([100]), 1)
        XCTAssertEqual(H_Index.hIndex([]), 0)
        XCTAssertEqual(H_Index.hIndex([2, 100, 23, 4, 3]), 3)
        XCTAssertEqual(H_Index.hIndex([8, 2, 3]), 2)
        XCTAssertEqual(H_Index.hIndex([12, 23, 23, 6]), 4)
        XCTAssertEqual(H_Index.hIndex([4, 4, 0, 0]), 2)
    }
}

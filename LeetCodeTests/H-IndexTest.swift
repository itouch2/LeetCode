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
        let h_index = H_Index()
        XCTAssertEqual(h_index.hIndex([1]), 1)
        XCTAssertEqual(h_index.hIndex([100]), 1)
        XCTAssertEqual(h_index.hIndex([]), 0)
        XCTAssertEqual(h_index.hIndex([2, 100, 23, 4, 3]), 3)
        XCTAssertEqual(h_index.hIndex([8, 2, 3]), 2)
        XCTAssertEqual(h_index.hIndex([12, 23, 23, 6]), 4)
        XCTAssertEqual(h_index.hIndex([4, 4, 0, 0]), 2)
    }
}

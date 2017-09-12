//
//  SearchinRotatedSortedArrayTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/12.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class SearchinRotatedSortedArrayTest: XCTestCase {

    func testSearch() {
        let search = SearchinRotatedSortedArray()
        XCTAssertEqual(search.search([4, 5, 6, 7, 0, 1, 2], 2), 6)
        XCTAssertEqual(search.search([4, 5, 6, 7, 0, 1, 2], 5), 1)
        XCTAssertEqual(search.search([3, 4, 5, 6, 7, 0, 1, 2], 0), 5)
        XCTAssertEqual(search.search([4, 5, 6, 7, 0, 1, 2, 3], 5), 1)
        XCTAssertEqual(search.search([1, 3, 5], 1), 0)
    }
}

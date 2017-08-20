//
//  BestTimetoBuyandSellStockIITest.swift
//  LeetCode
//
//  Created by You Tu on 2017/8/20.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class BestTimetoBuyandSellStockIITest: XCTestCase {

    func testMaxProfit() {
        let bestTime = BestTimetoBuyandSellStockII()
        
        XCTAssertEqual(bestTime.maxProfit([2, 6, 1, 4, 7]), 10)
        XCTAssertEqual(bestTime.maxProfit([3, 3, 5, 0, 0, 3, 1, 4]), 8)
        XCTAssertEqual(bestTime.maxProfit([2, 1, 2, 0, 1]), 2)
        XCTAssertEqual(bestTime.maxProfit([2]), 0)
        XCTAssertEqual(bestTime.maxProfit([]), 0)
    }
}

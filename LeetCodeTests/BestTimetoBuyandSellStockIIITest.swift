//
//  BestTimetoBuyandSellStockIIITest.swift
//  LeetCode
//
//  Created by You Tu on 2017/8/20.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class BestTimetoBuyandSellStockIIITest: XCTestCase {

    func testMaxProfit() {
        let bestTime = BestTimetoBuyandSellStockIII()
        XCTAssertEqual(bestTime.maxProfit([3, 3, 5, 0, 0, 3, 1, 4]), 6)
    }

}

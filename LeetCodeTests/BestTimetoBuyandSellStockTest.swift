//
//  BestTimetoBuyandSellStockTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/8/20.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class BestTimetoBuyandSellStockTest: XCTestCase {
    
    func testMaxProfit() {
        let bestTime = BestTimetoBuyandSellStock()
        XCTAssertEqual(bestTime.maxProfit([7, 1, 5, 3, 6, 4]), 5)
        XCTAssertEqual(bestTime.maxProfit([7, 6, 4, 3, 1]), 0)
    }
}

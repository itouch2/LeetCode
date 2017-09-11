//
//  ClimbingStairsTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/11.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class ClimbingStairsTest: XCTestCase {

    func testClimbStairs() {
        let climbStairs = ClimbingStairs()
        XCTAssertEqual(climbStairs.climbStairs(1), 1)
        XCTAssertEqual(climbStairs.climbStairs(2), 2)
        XCTAssertEqual(climbStairs.climbStairs(3), 3)
        XCTAssertEqual(climbStairs.climbStairs(4), 5)
        XCTAssertEqual(climbStairs.climbStairs(5), 8)
        
    }
}

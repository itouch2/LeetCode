//
//  TwoSumTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/14.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class TwoSumTest: XCTestCase {

    func testTwoSum() {
        let twoSum = TwoSum()
        
        let nums = [2, 7, 11, 15]
        let target = 9
        
        print(twoSum.twoSum(nums, target))
    }

}

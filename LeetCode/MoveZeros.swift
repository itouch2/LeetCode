//
//  MoveZeros.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/11.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

class MoveZeros: NSObject {
    func moveZeroes(_ nums: inout [Int]) {
        var start = 0
        for (index, val) in nums.enumerated() {
            if val != 0 {
                nums[index] = 0
                nums[start] = val
                start += 1
            }
        }
    }
}

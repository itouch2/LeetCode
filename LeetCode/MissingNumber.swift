//
//  MissingNumber.swift
//  LeetCode
//
//  Created by You Tu on 2017/5/24.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

class MissingNumber: NSObject {
    static func missingNumber(_ nums: [Int]) -> Int {
        var sum: Int = 0
        for num in nums {
            sum += num
        }
        
        return nums.count * (nums.count + 1) / 2 - sum
    }
}

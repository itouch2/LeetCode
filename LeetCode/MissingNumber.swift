//
//  MissingNumber.swift
//  LeetCode
//
//  Created by You Tu on 2017/5/24.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/* 
 Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

 For example,
 Given nums = [0, 1, 3] return 2.

 Note:
 Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?
*/

import Cocoa

class MissingNumber: NSObject {
    func missingNumber(_ nums: [Int]) -> Int {
        var sum: Int = 0
        for num in nums {
            sum += num
        }
        
        return nums.count * (nums.count + 1) / 2 - sum
    }
}

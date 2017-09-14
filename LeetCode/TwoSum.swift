//
//  TwoSum.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/14.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

/*
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

class TwoSum: NSObject {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for (index, val) in nums.enumerated() {
            let other = target - val
            let otherIndex = map[other]
            if otherIndex != nil {
                return [otherIndex!, index]
            } else {
                map[val] = index
            }
        }
        return []
    }
}

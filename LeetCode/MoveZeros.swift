//
//  MoveZeros.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/11.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 
 For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
 
 Note:
 1. You must do this in-place without making a copy of the array.
 2. Minimize the total number of operations.
 */


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

//
//  FindTheDuplicateNumber.swift
//  LeetCode
//
//  Created by You Tu on 2017/5/25.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.
 
 Note:
 You must not modify the array (assume the array is read only).
 You must use only constant, O(1) extra space.
 Your runtime complexity should be less than O(n2).
 There is only one duplicate number in the array, but it could be repeated more than once.
 */

import Cocoa

class FindTheDuplicateNumber: NSObject {
    func findDuplicate(_ nums: [Int]) -> Int {
        var low = 1, high = nums.count - 1
        var mid = nums.count / 2
        
        while low < high {
            var count = 0
            for num in nums {
                if num <= mid {
                    count += 1
                }
            }
            
            if count <= mid {
                low = mid + 1
            } else {
                high = mid
            }
            mid = (low + high) / 2
        }
        return mid
    }
}

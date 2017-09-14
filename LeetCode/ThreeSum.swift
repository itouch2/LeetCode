//
//  ThreeSum.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/14.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

/*
 Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
 
 Note: The solution set must not contain duplicate triplets.
 
 For example, given array S = [-1, 0, 1, 2, -1, -4],
 
 A solution set is:
 [
 [-1, 0, 1],
 [-1, -1, 2]
 ]
 */

class ThreeSum: NSObject {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count <= 0 {
            return [[Int]]()
        }
        
        let sorted = nums.sorted()
        var indexes = [[Int]]()
        var set: Set = Set<Int>()

        for (index, val) in sorted.enumerated() {
            if set.contains(val) {
                continue
            }
            set.insert(val)
            
            let target = -val
            var i = index + 1, j = nums.count - 1

            var flag = false
            var previousLeft = 0
            
            while i < j {
                let left = sorted[i], right = sorted[j]
                
                if left + right == target {
                    i += 1
                    j -= 1
                    
                    if flag && left == previousLeft {
                        continue
                    }
                    
                    flag = true
                    
                    indexes.append([val, left, right])
                    previousLeft = left
                } else if left + right < target {
                    i += 1
                    previousLeft = left
                } else {
                    j -= 1
                }
            }
        }
        
        return indexes
    }
}

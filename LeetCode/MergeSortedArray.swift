//
//  MergeSortedArray.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/10.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
 
 Note:
 You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.
 */

import Cocoa

class MergeSortedArray: NSObject {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = 0, j = 0
        var results: [Int] = []
        while i < m && j < n {
            if nums1[i] <= nums2[j] {
                results.append(nums1[i])
                i += 1
            } else {
                results.append(nums2[j])
                j += 1
            }
        }
        
        let remained: [Int] = i >= m ? nums2 : nums1
        var remainedIndex = i >= m ? j : i
        let remainedCount = i >= m ? n : m
    
        while remainedIndex < remainedCount {
            results.append(remained[remainedIndex])
            remainedIndex += 1
        }
        
        nums1 = results
    }
}

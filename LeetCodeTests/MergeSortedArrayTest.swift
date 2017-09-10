//
//  MergeSortedArrayTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/10.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class MergeSortedArrayTest: XCTestCase {

    func testMerge() {
        let merge = MergeSortedArray()
        var nums1 = [2, 3, 9]
        let nums2 = [4, 7, 10, 12]
        
        merge.merge(&nums1, nums1.count, nums2, nums2.count)
        print(nums1)
    }
}

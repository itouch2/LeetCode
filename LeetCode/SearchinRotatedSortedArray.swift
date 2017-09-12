//
//  SearchinRotatedSortedArray.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/11.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

/*
 Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.
 
 (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
 
 You are given a target value to search. If found in the array return its index, otherwise return -1.
 
 You may assume no duplicate exists in the array.
 
 */

class SearchinRotatedSortedArray: NSObject {
    func search(_ nums: [Int], _ target: Int) -> Int {
        return searchFromRange(nums, target, 0, nums.count - 1)
    }
    
    func searchFromRange(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {
        if left > right {
            return -1
        }
        
        let mid = left + (right - left) / 2
        if nums[mid] == target {
            return mid
        }
        
        if nums[left] < nums[right] {
            
            if target < nums[left] {
                return -1
            }
            
            if target > nums[right] {
                return -1
            }
            
            return binarySearchFromRange(nums, target, left: left, right: right)
        }
        
        let leftIndex = searchFromRange(nums, target, mid + 1, right)
        if leftIndex != -1 {
            return leftIndex
        }
        return searchFromRange(nums, target, left, mid - 1)
       
    }
    
    func binarySearchFromRange(_ nums: [Int], _ target: Int, left: Int, right: Int) -> Int {
        if target < nums[left] || target > nums[right] {
            return -1
        }
        
        if left > right {
            return -1
        }
        
        let mid = left + (right - left) / 2
        if nums[mid] == target {
            return mid
        } else if nums[mid] < target  {
            return binarySearchFromRange(nums, target, left: mid + 1, right: right)
        } else {
            return binarySearchFromRange(nums, target, left: left, right: mid - 1)
        }
    }
}

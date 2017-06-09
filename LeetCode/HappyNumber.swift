//
//  HappyNumber.swift
//  LeetCode
//
//  Created by You Tu on 2017/6/8.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Write an algorithm to determine if a number is "happy".
 
 A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.
 
 Example: 19 is a happy number
 
 12 + 92 = 82
 82 + 22 = 68
 62 + 82 = 100
 12 + 02 + 02 = 1
 */

import Cocoa

class HappyNumber: NSObject {
    func isHappy(_ n: Int) -> Bool {
        var k = n
        var value = k
        var set = Set<Int>([k])
        while value != 1 {
            k = value
            value = 0
            while k > 0 {
                value += Int(pow(Double(k % 10), 2))
                k = k / 10
            }
            
            if set.contains(value) {
                return false
            }
            set.insert(value)
        }
        return true
    }
}

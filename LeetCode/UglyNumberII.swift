//
//  UglyNumberII.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/10.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Write a program to find the n-th ugly number.

Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 1, 2, 3, 4, 5, 6, 8, 9, 10, 12 is the sequence of the first 10 ugly numbers.

Note that 1 is typically treated as an ugly number, and n does not exceed 1690.
 */

import Cocoa

class UglyNumberII: NSObject {
    
    func nthUglyNumber(_ n: Int) -> Int {
        var step2 = 0, step3 = 0, step5 = 0
        var array:[Int] = [1, 2, 3]
        
        while array.count < n {
            
            var value2 = array[step2] * 2
            while value2 <= array.last! {
                step2 += 1
                value2 = array[step2] * 2
            }
            
            var value3 = array[step3] * 3
            while value3 <= array.last! {
                step3 += 1
                value3 = array[step3] * 3
            }
            
            var value5 = array[step5] * 5
            while value5 <= array.last! {
                step5 += 1
                value5 = array[step5] * 5
            }
            
            var minValue = min(value2, value3)
            minValue = min(minValue, value5)
            
            if value2 == minValue {
                step2 += 1
            } else if value3 == minValue {
                step3 += 1
            } else if value5 == minValue {
                step5 += 1
            }
            
            array.append(minValue)
        }
        return array[n - 1]
    }
}

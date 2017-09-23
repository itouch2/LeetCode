//
//  UglyNumber.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/10.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Write a program to check whether a given number is an ugly number.
 
 Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
 
 Note that 1 is typically treated as an ugly number.
 */

import Cocoa

class UglyNumber: NSObject {
    func isUgly(_ num: Int) -> Bool {
        
        if num < 0 {
            return false
        }
        
        var number = num
        
        for index in (2..<6).reversed() {
            while number % index == 0 {
                number = number / index
            }
        }
        
        return (number == 1)
    }
}

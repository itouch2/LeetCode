//
//  PowerofFour.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/13.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Given an integer (signed 32 bits), write a function to check whether it is a power of 4.
 
 Example:
 Given num = 16, return true. Given num = 5, return false.
 
 Follow up: Could you solve it without loops/recursion?
 */

import Cocoa

class PowerofFour: NSObject {
    func isPowerOfFour(_ num: Int) -> Bool {
        return num > 0 && num & (num - 1) == 0 && (num & 0x55555555) == num
    }
}

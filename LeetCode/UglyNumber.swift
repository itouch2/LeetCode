//
//  UglyNumber.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/10.
//  Copyright © 2017年 You Tu. All rights reserved.
//

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

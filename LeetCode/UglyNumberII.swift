//
//  UglyNumberII.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/10.
//  Copyright © 2017年 You Tu. All rights reserved.
//

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

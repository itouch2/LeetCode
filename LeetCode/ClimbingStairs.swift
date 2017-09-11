//
//  ClimbingStairs
//  LeetCode
//
//  Created by You Tu on 2017/9/11.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

/*
 You are climbing a stair case. It takes n steps to reach to the top.
 
 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 
 Note: Given n will be a positive integer.
 */

class ClimbingStairs: NSObject {
    func climbStairs(_ n: Int) -> Int {
        var x = 1, y = 2
        if n == 1 {
            return x
        } else if n == 2 {
            return y
        } else {
            var index = 2
            while index < n {
                let t = y
                y = x + y
                x = t
                index += 1
            }
            return y
        }
    }
}

//
//  H-Index.swift
//  LeetCode
//
//  Created by You Tu on 2017/5/24.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

class H_Index: NSObject {
    func hIndex(_ citations: [Int]) -> Int {
        if citations.count == 0 {
            return 0;
        }
        
        let sorted = citations.sorted{ $0 > $1 }
        var t = 0
        for i in 0 ..< sorted.count {
            if (i + 1) >= sorted[i] {
                return max(sorted[i], t)
            } else {
                t = i + 1
            }   
        }
        return t
    }
}

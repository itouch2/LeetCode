//
//  ThreeSumTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/14.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class ThreeSumTest: XCTestCase {
    
    func testThreeSum() {
        let s = [-1, 0, 1, 2, -1, -4]
        let three = ThreeSum()
        //print(three.threeSum(s))
        
        //let t = [-4,-2,-2,-2,0,1,2,2,2,3,3,4,4,6,6]
        //print(three.threeSum(t))
        
        let k = [-2,0,3,-1,4,0,3,4,1,1,1,-3,-5,4,0]
        print(three.threeSum(k))
    }
}

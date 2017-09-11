//
//  MoveZerosTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/11.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class MoveZerosTest: XCTestCase {

    func testMoveZeroes() {
        let moveZeros = MoveZeros()
        
        var array = [1, 2, 3, 0, 2, 2, 0, 1]
        moveZeros.moveZeroes(&array)
        print(array)
    }
}

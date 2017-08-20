//
//  SprialMatrixIITest.swift
//  LeetCode
//
//  Created by You Tu on 2017/8/20.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class SprialMatrixIITest: XCTestCase {
    
    func testGenerateMatrix() {
        let generateMatrix = SpiralMatrixII()
        let array = generateMatrix.generateMatrix(0)
        print(array)
    }
}

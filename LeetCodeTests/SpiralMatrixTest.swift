//
//  SpiralMatrixTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/6/27.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class SpiralMatrixTest: XCTestCase {
    
    func testSpiralMatrix() {
        let spiralMatrix = SpiralMatrix()
        var array = [[1, 3, 4], [2, 8, 6], [7, 5, 9]]
        XCTAssertEqual(spiralMatrix.spiralOrder(array), [1, 3, 4, 6, 9, 5, 7, 2, 8])
        
        array = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]
        XCTAssertEqual(spiralMatrix.spiralOrder(array), [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7])
        
        array = [[1]]
        XCTAssertEqual(spiralMatrix.spiralOrder(array), [1])
        
        array = [[]]
        XCTAssertEqual(spiralMatrix.spiralOrder(array), [])
        
        array = []
        XCTAssertEqual(spiralMatrix.spiralOrder(array), [])
        
        array = [[1, 2], [3, 4]]
        XCTAssertEqual(spiralMatrix.spiralOrder(array), [1, 2, 4, 3])
        
        array = [[2, 5], [3, 4], [1, 9]]
        XCTAssertEqual(spiralMatrix.spiralOrder(array), [2, 5, 4, 9, 1, 3])
    }
}

//
//  SpiralMatrixII.swift
//  LeetCode
//
//  Created by You Tu on 2017/6/27.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

/*
 Given an integer n, generate a square matrix filled with elements from 1 to n2 in spiral order.
 
 For example,
 Given n = 3,
 
 You should return the following matrix:
 [
 [ 1, 2, 3 ],
 [ 8, 9, 4 ],
 [ 7, 6, 5 ]
 ]
*/

class SpiralMatrixII: NSObject {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var spiralOrderArray: [[Int]] = Array(repeating:Array(repeating:0, count:n), count:n)
        var value = 1, index = 0
        while true {
            if index > (n - index - 1) {
                break
            }
            
            if index == (n - index - 1) {
                spiralOrderArray[index][index] = value
                break
            }
            
            for i in index..<(n - index - 1) {
                spiralOrderArray[index][i] = value
                value += 1
            }
            
            for i in index..<(n - index - 1) {
                spiralOrderArray[i][n - index - 1] = value
                value += 1
            }
            
            var sequence = stride(from: n - index - 1, to: index, by: -1)
            for i in sequence {
                spiralOrderArray[n - index - 1][i] = value
                value += 1
            }
            
            sequence = stride(from: n - index - 1, to: index, by: -1)
            for i in sequence {
                spiralOrderArray[i][index] = value
                value += 1
            }
            index += 1
        }
        return spiralOrderArray
    }
}

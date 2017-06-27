//
//  SpiralMatrix.swift
//  LeetCode
//
//  Created by You Tu on 2017/6/18.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Given a matrix of m x n elements (m rows, n columns), return all elements of the matrix in spiral order.
 
 For example,
 Given the following matrix:
 
 [
 [ 1, 2, 3 ],
 [ 4, 5, 6 ],
 [ 7, 8, 9 ]
 ]
 You should return [1,2,3,6,9,8,7,4,5].
 */

import Cocoa

class SpiralMatrix: NSObject {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var spiralOrderArray: [Int] = []
        let row = matrix.count
        if row == 0 {
            return spiralOrderArray
        }
        let column = matrix[0].count
        if column == 0 {
            return spiralOrderArray;
        }
        var index = 0
        while true {
            if index > (column - index - 1) {
                break
            }
            
            if index == (column - index - 1) {
                for i in index..<(row - index) {
                    spiralOrderArray.append(matrix[i][index])
                }
                break
            }
            
            if index > (row - index - 1) {
                break
            }
            
            if index == (row - index - 1) {
                for i in index..<(column - index) {
                    spiralOrderArray.append(matrix[index][i])
                }
                break
            }
            
            for i in index..<(column - index - 1) {
                spiralOrderArray.append(matrix[index][i])
            }
            
            for i in index..<(row - index - 1) {
                spiralOrderArray.append(matrix[i][column - index - 1])
            }
            
            var sequence = stride(from: column - index - 1, to: index, by: -1)
            for i in sequence {
                spiralOrderArray.append(matrix[row - index - 1][i])
            }
            
            sequence = stride(from: row - index - 1, to: index, by: -1)
            for i in sequence {
                spiralOrderArray.append(matrix[i][index])
            }
            
            index += 1
        }
        return spiralOrderArray
    }
}

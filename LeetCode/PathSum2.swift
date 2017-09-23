//
//  PathSum2.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/23.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Given a binary tree and a sum, find all root-to-leaf paths where each path's sum equals the given sum.
 
 For example:
 Given the below binary tree and sum = 22,
 5
 / \
 4   8
 /   / \
 11  13  4
 /  \    / \
 7    2  5   1
 return
 [
 [5,4,11,2],
 [5,8,4,5]
 ]
 */

import Cocoa

class PathSum2: NSObject {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        pathSum(root, sum, 0, [])
        return res
    }
    
    func pathSum(_ node: TreeNode?, _ sum: Int, _ total: Int, _ cur: [Int]) {
        if node == nil {
            return
        }
        
        let value = total + (node?.val)!
        
        var t = cur
        t.append((node?.val)!)
        
        if value == sum && node?.left == nil && node?.right == nil {
            res.append(t)
        }
        pathSum(node?.left, sum, value, t)
        pathSum(node?.right, sum, value, t)
    }
    
    var res:[[Int]] = []
}
